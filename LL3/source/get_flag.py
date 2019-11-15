"""
http://www.ibiblio.org/apollo/developer.html#Packets_for_Socket_Implementation_of_AGC
"""

import socket


def check_signature(data):
    """
    Check that the signature of the 4 byte packet is this:
        00xxxxxx 01xxxxxx 10xxxxxx 11xxxxxx
    """
    try:
        assert isinstance(data, bytes)  # check the type
        assert len(data) == 4           # check the length
        assert data[0] >> 6 == 0        # check the first two bits
        assert data[1] >> 6 == 1
        assert data[2] >> 6 == 2
        assert data[3] >> 6 == 3
        return True
    except AssertionError as E:
        return False
    
def get_values(data):
    """Get the different values from the packet and return them as ints in a tuple
    Packet format:
         00utpppp 01pppddd 10dddddd 11dddddd
    Returns:
        (u, t, pppppp, ddddddddddddddd)
    Raises:
        ValueError: Raised if the packet is invalid
    """
    if not check_signature(data):
        raise ValueError("Invalid AGC packet")

    # We know the first two bits here are 0, so we dont need to mask it
    u = data[0] >> 5
    t = (data[0] & 16) >> 4

    # Build P, this is in 2 bytes so it will come in 2 parts
    p1 = data[0] & 15   # p1 = xxxxpppp & 00001111 = 0000pppp
    p1 = p1 << 3        # p1 = pppp000   - p is only 7 bits
    p2 = data[1] & 56   # p2 = xxpppxxx & 00111000 = 00ppp000
    p2 = p2 >> 3        # p2 = 00000ppp
    p = p1 | p2         # 0ppp p000 | 0000 0ppp = 0ppp pppp

    # Build d
    d1 = data[1] & 7    # xxxxxddd & 00000111 = 0000 0ddd
    d1 = d1 << 12       # 0ddd 0000 0000 0000
    d2 = data[2] & 63   # xxdddddd & 00111111 = 00dd dddd
    d2 = d2 << 6        # 0000 dddd dd00 0000
    d3 = data[3] & 63   # 00dd dddd
    d = d1 | d2 | d3

    return (u, t, p, d)

def print_packet(data, short=False):
    try:
        u, t, p, d = get_values(data)
        if t == 1:
            print("Got counter-modification request signal.. skipping")
            return
        if u == 1:
            print("Supposedly something is wrong with the socket... skipping")
            return
        ret = ("Got a valid packet on channel {}:\n"
               "  octal: {}\tdecimal: {}\n"
               "  hex: {}\tascii: {}"
        ).format(p, oct(d), d, hex(d), (d).to_bytes(2, byteorder='big'))
        if short:
            print(p, d, oct(d), hex(d), (d).to_bytes(2, byteorder='big'))
        else:
            print(ret)

    except ValueError as E:
        if data == b'\xff\xff\xff\xff':
            # Ping packet, ignore it
            return
        if not data:
            return
        print("{}: {:}".format(E, data))

def write_file_bits(outfile, words, word_size=15):
    """Given a bunch of words of size X, write the data to a file
    """
    binary = ""
    data = bytearray()
    with open(outfile, 'wb') as fil:
        while words:
            word = words.pop(0)
            binary += "{word:0{word_size}b}".format(word=word,word_size=word_size)
            while len(binary) > 7:
                bind = bytes((int(binary[:8], 2),))
                fil.write(bind)
                data += bind
                binary = binary[8:]
    while len(binary) > 7:
        data.append(int(binary[:8], 2))
        binary = binary[8:]
    return data


def make_sock(host="127.0.0.1"):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((host, 19700))
    return s


def main2():
    sock = make_sock("192.168.177.195")
    while True:
        data = sock.recv(4)
        print_packet(data, short=True)

def main():
    sock = make_sock("192.168.177.195")
    words = []
    store = 0

    while True:
        data = sock.recv(4)
        try:
            _, _, p, d = get_values(data)
        except ValueError:
            continue

        # Wait for the trigger bits to start
        # 3x 111 1111 1111 1111 on Channel 21
        if p == 21 and d == 32767:
            store += 1
            print("Got another trigger bit", store)

        # Wait for the end trigger bits
        if p == 21 and d == 0:
            # Subtract 1, but dont go below 0
            store = max(0, store-1)
            print("Got a NOGO trigger bit", store)

        if store == 3:
            print("Ok, now we are about to start getting some data")
            break
    
    data = sock.recv(4)
    try:
        _, _, p, d = get_values(data)
    except ValueError:
        pass
    while p == 20:
        words += [d]
        data = sock.recv(4)
        try:
            _, _, p, d = get_values(data)
        except ValueError:
            continue


    filename = "output.bin"
    write_file_bits(filename, words, 15)
    print("Data written to", filename)
main2()

import socket
def make_sock(host="127.0.0.1"):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((host, 19700))
    return s

def main():
    sock = make_sock("192.168.177.195")
    while True:
        data = sock.recv(4)
        if data == b'\xff\xff\xff\xff':
            continue
        print(chr(data[1]), end="")
        #printp(data)

main()
"""
This file will generate an AGC4 assembly file to be compile by yaYUL

http://www.ibiblio.org/apollo/DIY.html
"""
from jinja2 import Template

ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'  # or string.ascii_uppercase
N = len(ALPHABET)
ALPHABET_INDEX = {d: i for i, d in enumerate(ALPHABET, 1)}

def getLabel(num):
    ''' Converts any positive integer to Base26(letters only) with no 0th 
    case. Useful for applications such as spreadsheet columns to determine which 
    Letterset goes with a positive integer.
    '''
    if num < 0:
        raise ValueError("Input should be a non-negative integer.")
    elif num == 0:
        return ""
    else:
        q, r = divmod(num - 1, N)
        return getLabel(q) + ALPHABET[r]

def read_file_bits(filename, word_size=15):
    """Read a file and process it into binary chunks of size 'word_size'
    """
    binary = ""
    words = []
    with open(filename, 'rb') as fil:
        byte = fil.read(1)
        while len(byte) > 0:
            binary += "{:08b}".format(byte[0])
            while len(binary) >= word_size:
                word_bin = binary[:word_size]
                binary = binary[word_size:]
                words.append(int(word_bin, 2))
            byte = fil.read(1)
        # Write any remaining data
        binary = "{:<08}".format(binary)
        words.append(int(binary,2))
    return words

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


def generate_first(flag):
    with open('first.asm') as file_:
        template = Template(file_.read())
    with open("first.agc", 'w') as fil:
        fil.write(template.render(flag=flag))
    print("Wrote flag asm to first.agc")

def genOctal(char):
    """Convert a character into an octal representation"""
    binary = "0{:b}0000000".format(ord(char))
    return int(binary, 2)

def getSymbol(char):
    if char == "{":
        return 'LB'
    elif char == "}":
        return 'RB'
    elif char == "-":
        return 'DASH'
    else:
        return char.upper()+"\t"

def main22():
    flag = "ritseC{did-u-use-oCtAL}"
    letters = "AbCdefghijkLmnopQrstuWYz{}-"

    symbols = []
    # Build the symbol table
    for sym in letters:
        char = ord(sym)
        sym = getSymbol(sym)
        symbols.append("{}\t\t\tEQUALS\t{}".format(sym, char))
        
    symbols = "\n".join(symbols)
    octal_ = []
    for char in flag:
        if char not in letters:
            print("Invalid Character", char)
            quit(1)
        
        octal_.append(getSymbol(char))

    lines = "\n".join(["            CA  {}".format(str(o)) for o in octal_])
    with open("flags.agc.txt") as fil:
        x = fil.read().replace("{{FLAGS}}", lines)
        x = x.replace("{{SYMBOLS}}", symbols)
        print(x)
    #print(octal_)

def main():
    # Get all the 15 bit words in the file
    words = read_file_bits("../flag.zip")

    # For each word, generate a label and list of labels to be written
    labels = {}
    data = []
    i = 27
    for word in words:
        if word not in labels:
            labels[word] = getLabel(i)
            i += 1
        data.append(labels[word])


    with open('second.asm') as file_:
        template = Template(file_.read())
    with open("second.agc", 'w') as fil:
        fil.write(template.render(labels=labels, data=data))
    print("AGC written to second.agc")
    #data = write_file_bits("../backdoor2.zip", words)
    #print(data)
#generate_first("RITSEC{HOUSTON_WE_G0T_EM}")
main()
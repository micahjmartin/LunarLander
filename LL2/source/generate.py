"""
This file will generate an AGC4 assembly file to be compile by yaYUL

http://www.ibiblio.org/apollo/DIY.html
"""
import string

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

def genSTORE(char):
    stri = (
        "            CA      CHR{0}\n"
        "            TS      MEM{0}"
    ).format(getSymbol(char))
    return stri

def main():
    flag = "RITSEC{TEST}"
    letters = string.ascii_uppercase + string.digits + "{}-"
    for i in letters:
        #print("MEM{}\t\tERASE".format(getSymbol(i)))
        #octal = str(genOctal(i))
        #asm_str = "CHAR{}\t\tEQUALS\t\t{}".format(getSymbol(i), octal)
        print(genSTORE(i))
        #print(asm_str)
main()
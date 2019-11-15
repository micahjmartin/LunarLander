import string
import random


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


def genNums(char):
    """Protocol looks like this
    00utpppp 01pppddd 10dddddd 11dddddd

    p is a 7bit channel number
    d is a 15 bit data segment

    by changing the P and D correctly, we can make the second byte into an ASCII char

    This function will generate the needed P and D for a given character
    """
    # Do this so letters dont get duplicate values
    dor = random.randrange(0, 512)
    por = random.randrange(0, 15) << 3
    char = ord(char)  # e.g. 0100 0001 for A
    p = (char & 56) >> 3
    p = p | por
    d = (char & 7) << 12 # ddd 0000 0000 0000
    d = d | dor
    return p, d

def main():
    flag = "RITSEC{The_stars_ArE_calling}"

    consts = []
    i = 27
    for char in flag:
        p, d = genNums(char)
        # Convert P to octal
        p = oct(p)[2:]
        d = oct(d)[2:]
        LBL = getLabel(i)
        consts.append((LBL, d))
        i += 1
        print("            CAF\t\t{} # {}".format(LBL, char))
        print("            EXTEND")
        print("            WRITE\t{}".format(p))
    print("            TCF STARTUP")
    for lbl, val in consts:
        print("{}          OCT\t{}".format(lbl, val))
main()
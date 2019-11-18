"""Encode a binary into the core-rope and print it out
"""
import struct
import random
from jinja2 import Template, Environment, FileSystemLoader

j2 = Environment(
    loader=FileSystemLoader("./")
)

j2.filters['oct'] = lambda i: oct(i).replace("0o", "")
j2.filters['bank'] = lambda i: oct(i << 10).replace("0o", "")


class Bank(object):
    """This object will save words into various locations in Common-Fixed memory
    and keep track of where evverything is stored"""
    def __init__(self, banks=None):
        """Set up"""
        self.label_i = 27
        self.banks = {} # Stores the location of label in the banks
        self.words = {} # Maps a word to a (label, bank) tuples
        self.uniform = False  # if uniform, fill a bank before moving to the next one

        ## CONSTANTS
        self._BANK_SIZE = 0o2000

        if banks:
            self.valid_banks = banks
        else:
            # These are the valid banks, we dont store anything in bank 2, or 3
            self.valid_banks = [0, 1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
        for i in self.valid_banks:
            self.banks[i] = []

        self.usedstorage = 0
        self.maxstorage = len(self.valid_banks) * 1024
        

    def store(self, value, bank=None):
        """When we need to store a value in fixed data, call this function.
        It will return the label and bank that the value is stored under.

        The value will need to be stored in a bank. If you specify the bank, then
        we will try to use that, if bank is -1, a random bank will be chosen"""
        # Just enforce that the given data is 15 bits
        if value > 0o77777:
            raise ValueError("{} is not a 15bit word".format(value))

        # We alreay store this value
        if value in self.words:
            return self.words[value]

        # We dont store this value yet, make a new label and store it
        try:
            label = b26(self.label_i)
            self.label_i += 1
            bank = self.writeBank(label, value, bank=bank)
        except ValueError as val_err:
            self.label_i -= 1 # Reset
            raise val_err

        self.words[value] = (label, bank)
        return (label, bank)

    def writeBank(self, label, value, bank=None):
        """Save a label into a bank. If the bank is specified and full, raise an error
        """
        if bank and len(self.banks[bank]) >= self._BANK_SIZE:
            raise ValueError("Bank is full")
        
        if bank is None:
            bnks = self.valid_banks.copy()
            # If we want to store the data in order, set uniform
            if not self.uniform:
                random.shuffle(bnks)
            bank = bnks.pop(0)
            try:
                while len(self.banks[bank]) >= self._BANK_SIZE:
                    bank = bnks.pop(0)
            except IndexError:
                raise ValueError("All banks are full!! :confusion:")
        
        self.banks[bank].append((label, value))
        self.usedstorage += 1
        return bank
                

ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'  # or string.ascii_uppercase

def b26(num):
    ''' Converts any positive integer to Base26(letters only) with no 0th 
    case. Useful for applications such as spreadsheet columns to determine which 
    Letterset goes with a positive integer.
    '''
    if num < 0:
        raise ValueError("Input should be a non-negative integer.")
    elif num == 0:
        return ""
    else:
        q, r = divmod(num - 1, 26)
        return b26(q) + ALPHABET[r]

def read_words(filename, word_size=15):
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


def main():
    # read our stage2 file
    filename = "stage2/flag.txt"
    #filename = "stage2/stage2.zip"
    words = read_words(filename)

    # Make a new storage bank
    #bank = Bank([4, 5])
    bank = Bank()
    bank.uniform = False

    if bank.maxstorage >= len(words):
        print("We have enough space to store this file!!")
    else:
        print("Size of the memory banks: {}\nSize of the input file: {}".format(bank.maxstorage, len(words)))
        raise ValueError("Not enough storage space to store the file")
    
    # Allocate memory for all the words
    order = []
    for word in words:
        order.append(bank.store(word))
    
    template = j2.get_template("s1.asm")
    with open("s1.agc", 'w') as fil:
        fil.write(template.render(labels=order, banks=bank.banks))



main()
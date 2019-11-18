def build_packet(a, t, c, d):
    """Conver the values into a packet
    
    Data format:
        00at cccc 01cc cddd 10dd dddd 11dd dddd
    
        a - Abort bit - When the server detects malicious activity, it sets the abort bit
            and locks all remote spacecreft controls until a reset is given

        On server msgs:
        t - change bit - 1 if the data has changed from the last time it was queried
        On client msgs: ?? < This idea might such
        t - poll bit - 1 if we are setting the data, 0 if we are polling the data

    Types of Dat
            

    """



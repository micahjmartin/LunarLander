            
            SETLOC 1000
MEMA        ERASE
MEMB        ERASE
MEMC        ERASE
MEMD        ERASE
MEME        ERASE
MEMF        ERASE
MEMG        ERASE
MEMH        ERASE
MEMI        ERASE
MEMJ        ERASE
MEMK        ERASE
MEML        ERASE
MEMM        ERASE
MEMN        ERASE
MEMO        ERASE
MEMP        ERASE
MEMQ        ERASE
MEMR        ERASE
MEMS        ERASE
MEMT        ERASE
MEMU        ERASE
MEMV        ERASE
MEMW        ERASE
MEMX        ERASE
MEMY        ERASE
MEMZ        ERASE
MEM0        ERASE
MEM1        ERASE
MEM2        ERASE
MEM3        ERASE
MEM4        ERASE
MEM5        ERASE
MEM6        ERASE
MEM7        ERASE
MEM8        ERASE
MEM9        ERASE

MEMLB   	ERASE  # Left Bracket
MEMRB   	ERASE  # Right Bracket
MEMDA		ERASE  # Dash

NEWJOB      EQUALS    67
            SETLOC    4000
            TCF       LAUNCH
            NOOP
            NOOP
            NOOP

            RESUME
            NOOP
            NOOP
            NOOP
            RESUME
            NOOP
            NOOP
            NOOP
            RESUME
            NOOP
            NOOP
            NOOP
            RESUME
            NOOP
            NOOP
            NOOP
            RESUME
            NOOP
            NOOP
            NOOP
            RESUME
            NOOP
            NOOP
            NOOP
            RESUME
            NOOP
            NOOP
            NOOP
            RESUME
            NOOP
            NOOP
            NOOP
            RESUME
            NOOP
            NOOP
            NOOP
            RESUME
            NOOP
            NOOP
            NOOP
       
LAUNCH
            CS      NEWJOB  # Prevent GOJAM
            # Store the alphabet into Eraseable mem
            # This prevents basic reversing of the binary

            CAF     CONSTA
            TS      MEMA
            CAF     CONSTB
            TS      MEMB
            CAF     CONSTC
            TS      MEMC
            CAF     CONSTD
            TS      MEMD
            CAF     CONSTE
            TS      MEME
            CAF     CONSTF
            TS      MEMF
            CAF     CONSTG
            TS      MEMG
            CAF     CONSTH
            TS      MEMH
            CAF     CONSTI
            TS      MEMI
            CAF     CONSTJ
            TS      MEMJ
            CAF     CONSTK
            TS      MEMK
            CAF     CONSTL
            TS      MEML
            CAF     CONSTM
            TS      MEMM
            CAF     CONSTN
            TS      MEMN
            CAF     CONSTO
            TS      MEMO
            CAF     CONSTP
            TS      MEMP
            CAF     CONSTQ
            TS      MEMQ
            CAF     CONSTR
            TS      MEMR
            CAF     CONSTS
            TS      MEMS
            CAF     CONSTT
            TS      MEMT
            CAF     CONSTU
            TS      MEMU
            CAF     CONSTV
            TS      MEMV
            CAF     CONSTW
            TS      MEMW
            CAF     CONSTX
            TS      MEMX
            CAF     CONSTY
            TS      MEMY
            CAF     CONSTZ
            TS      MEMZ
            CAF     CONST0
            TS      MEM0
            CAF     CONST1
            TS      MEM1
            CAF     CONST2
            TS      MEM2
            CAF     CONST3
            TS      MEM3
            CAF     CONST4
            TS      MEM4
            CAF     CONST5
            TS      MEM5
            CAF     CONST6
            TS      MEM6
            CAF     CONST7
            TS      MEM7
            CAF     CONST8
            TS      MEM8
            CAF     CONST9
            TS      MEM9
            CAF		CONSTLB
            TS      MEMLB
            CAF		CONSTRB
            TS      MEMRB
            CAF		CONSTDA
            TS      MEMDA
MAXQ
            # Write the flag out to a channel

            CAE     MEMR
            EXTEND
            WRITE   24
            CAE     MEMI
            EXTEND
            WRITE   24
            CAE     MEMT
            EXTEND
            WRITE   24
            CAE     MEMS
            EXTEND
            WRITE   24
            CAE     MEME
            EXTEND
            WRITE   24
            CAE     MEMC
            EXTEND
            WRITE   24
            CAE     MEMLB
            EXTEND
            WRITE   24
            CAE     MEMH
            EXTEND
            WRITE   24
            CAE     MEMO
            EXTEND
            WRITE   24
            CAE     MEMU
            EXTEND
            WRITE   24
            CAE     MEMS
            EXTEND
            WRITE   24
            CAE     MEMT
            EXTEND
            WRITE   24
            CAE     MEMO
            EXTEND
            WRITE   24
            CAE     MEMN
            EXTEND
            WRITE   24
            CAE     MEMDA
            EXTEND
            WRITE   24
            CAE     MEMW
            EXTEND
            WRITE   24
            CAE     MEME
            EXTEND
            WRITE   24
            CAE     MEMDA
            EXTEND
            WRITE   24
            CAE     MEMG
            EXTEND
            WRITE   24
            CAE     MEM0
            EXTEND
            WRITE   24
            CAE     MEMT
            EXTEND
            WRITE   24
            CAE     MEMDA
            EXTEND
            WRITE   24
            CAE     MEME
            EXTEND
            WRITE   24
            CAE     MEMM
            EXTEND
            WRITE   24
            CAE     MEMRB
            EXTEND
            WRITE   24
            TCF MAXQ

# Alphabet definition
CONSTA          DEC             16640
CONSTB          DEC             16896
CONSTC          DEC             17152
CONSTD          DEC             17408
CONSTE          DEC             17664
CONSTF          DEC             17920
CONSTG          DEC             18176
CONSTH          DEC             18432
CONSTI          DEC             18688
CONSTJ          DEC             18944
CONSTK          DEC             19200
CONSTL          DEC             19456
CONSTM          DEC             19712
CONSTN          DEC             19968
CONSTO          DEC             20224
CONSTP          DEC             20480
CONSTQ          DEC             20736
CONSTR          DEC             20992
CONSTS          DEC             21248
CONSTT          DEC             21504
CONSTU          DEC             21760
CONSTV          DEC             22016
CONSTW          DEC             22272
CONSTX          DEC             22528
CONSTY          DEC             22784
CONSTZ          DEC             23040
CONST0          DEC             12288
CONST1          DEC             12544
CONST2          DEC             12800
CONST3          DEC             13056
CONST4          DEC             13312
CONST5          DEC             13568
CONST6          DEC             13824
CONST7          DEC             14080
CONST8          DEC             14336
CONST9          DEC             14592
CONSTLB         DEC             31488
CONSTRB         DEC             32000
CONSTDA         DEC             24320

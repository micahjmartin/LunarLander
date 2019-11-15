{% set ALPHA = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789' %}            
            SETLOC 1000
{% for char in ALPHA %}MEM{{char}}        ERASE
{% endfor %}
MEMLB   	ERASE  # Left Bracket
MEMRB   	ERASE  # Right Bracket
MEMDA		ERASE  # Dash

NEWJOB      EQUALS    67
            SETLOC    4000
            TCF       LAUNCH
            NOOP
            NOOP
            NOOP
{% for i in range(10) %}
            RESUME
            NOOP
            NOOP
            NOOP{% endfor %}
       
LAUNCH
            CS      NEWJOB  # Prevent GOJAM
            # Store the alphabet into Eraseable mem
            # This prevents basic reversing of the binary
{% for char in ALPHA %}
            CAF     CONST{{char}}
            TS      MEM{{char}}{% endfor %}
            CAF		CONSTLB
            TS      MEMLB
            CAF		CONSTRB
            TS      MEMRB
            CAF		CONSTDA
            TS      MEMDA
MAXQ
            # Write the flag out to a channel
{% for char in flag %}{% if char == '{' %}{% set char = 'LB' %}{% endif %}{% if char == '}' %}{% set char = 'RB' %}{% endif %}{% if char == '_' %}{% set char = 'DA' %}{% endif %}
            CAE     MEM{{char}}
            EXTEND
            WRITE   24{% endfor %}
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
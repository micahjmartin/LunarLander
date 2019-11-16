
FBANK       EQUALS      4
BANK2       EQUALS      4000

# Store the bank numbers that are used
BANK0       EQUALS      0
BANK1       EQUALS      2000
BANK4       EQUALS      10000
BANK5       EQUALS      12000
BANK6       EQUALS      14000
BANK7       EQUALS      16000
BANK10       EQUALS      20000
BANK11       EQUALS      22000
BANK12       EQUALS      24000
BANK13       EQUALS      26000
BANK14       EQUALS      30000
BANK15       EQUALS      32000
BANK16       EQUALS      34000
BANK17       EQUALS      36000
BANK20       EQUALS      40000
BANK21       EQUALS      42000
BANK22       EQUALS      44000
BANK23       EQUALS      46000
BANK24       EQUALS      50000
BANK25       EQUALS      52000
BANK26       EQUALS      54000
BANK27       EQUALS      56000
BANK30       EQUALS      60000
BANK31       EQUALS      62000
BANK32       EQUALS      64000
BANK33       EQUALS      66000
BANK34       EQUALS      70000
BANK35       EQUALS      72000
BANK36       EQUALS      74000
BANK37       EQUALS      76000

            SETLOC    4000        # NOOP all the interupts
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

            # Send a few all 1s to indicate the start
            CA      BANK2
            TS      FBANK
            CA     MAXVAL
            EXTEND
            WRITE   25
            EXTEND
            WRITE   25
            EXTEND
            WRITE   25
            
            
            # Change to bank 0o16
            CA      BANK16
            TS      FBANK

            CAF     AA   # BANK16
            EXTEND
            WRITE   24
            
            # Change to bank 0o22
            CA      BANK22
            TS      FBANK

            CAF     AB   # BANK22
            EXTEND
            WRITE   24
            CAF     AC   # BANK22
            EXTEND
            WRITE   24
            
            # Change to bank 0o37
            CA      BANK37
            TS      FBANK

            CAF     AD   # BANK37
            EXTEND
            WRITE   24
            
            # Change to bank 0o24
            CA      BANK24
            TS      FBANK

            CAF     AE   # BANK24
            EXTEND
            WRITE   24
            
            # Change to bank 0o1
            CA      BANK1
            TS      FBANK

            CAF     AF   # BANK1
            EXTEND
            WRITE   24
            
            # Change to bank 0o36
            CA      BANK36
            TS      FBANK

            CAF     AG   # BANK36
            EXTEND
            WRITE   24
            
            # Change to bank 0o17
            CA      BANK17
            TS      FBANK

            CAF     AH   # BANK17
            EXTEND
            WRITE   24
            
            # Change to bank 0o35
            CA      BANK35
            TS      FBANK

            CAF     AI   # BANK35
            EXTEND
            WRITE   24
            
            # Change to bank 0o30
            CA      BANK30
            TS      FBANK

            CAF     AJ   # BANK30
            EXTEND
            WRITE   24
            
            # Change to bank 0o35
            CA      BANK35
            TS      FBANK

            CAF     AK   # BANK35
            EXTEND
            WRITE   24
            
            # Change to bank 0o25
            CA      BANK25
            TS      FBANK

            CAF     AL   # BANK25
            EXTEND
            WRITE   24
            
            # Change to bank 0o35
            CA      BANK35
            TS      FBANK

            CAF     AM   # BANK35
            EXTEND
            WRITE   24
            
            # Change to bank 0o34
            CA      BANK34
            TS      FBANK

            CAF     AN   # BANK34
            EXTEND
            WRITE   24
            
            # Change to bank 0o5
            CA      BANK5
            TS      FBANK

            CAF     AO   # BANK5
            EXTEND
            WRITE   24
            
            # Change to bank 0o26
            CA      BANK26
            TS      FBANK

            CAF     AP   # BANK26
            EXTEND
            WRITE   24
            
            # Change to bank 0o0
            CA      BANK0
            TS      FBANK

            CAF     AQ   # BANK0
            EXTEND
            WRITE   24
            
            # Change to bank 0o6
            CA      BANK6
            TS      FBANK

            CAF     AR   # BANK6
            EXTEND
            WRITE   24
            
            # Change to bank 0o5
            CA      BANK5
            TS      FBANK

            CAF     AS   # BANK5
            EXTEND
            WRITE   24
            
            # Change to bank 0o31
            CA      BANK31
            TS      FBANK

            CAF     AT   # BANK31
            EXTEND
            WRITE   24
            
            # Change to bank 0o4
            CA      BANK4
            TS      FBANK

            CAF     AU   # BANK4
            EXTEND
            WRITE   24
            
            # Change to bank 0o32
            CA      BANK32
            TS      FBANK

            CAF     AV   # BANK32
            EXTEND
            WRITE   24
            
            # Change to bank 0o4
            CA      BANK4
            TS      FBANK

            CAF     AW   # BANK4
            EXTEND
            WRITE   24
            
            # Change to bank 0o17
            CA      BANK17
            TS      FBANK

            CAF     AH   # BANK17
            EXTEND
            WRITE   24
            
            # Change to bank 0o4
            CA      BANK4
            TS      FBANK

            CAF     AX   # BANK4
            EXTEND
            WRITE   24
            
            # Change to bank 0o1
            CA      BANK1
            TS      FBANK

            CAF     AY   # BANK1
            EXTEND
            WRITE   24
            
            # Change to bank 0o5
            CA      BANK5
            TS      FBANK

            CAF     AZ   # BANK5
            EXTEND
            WRITE   24
            
            # Change to bank 0o32
            CA      BANK32
            TS      FBANK

            CAF     BA   # BANK32
            EXTEND
            WRITE   24
            
            # Change to bank 0o11
            CA      BANK11
            TS      FBANK

            CAF     BB   # BANK11
            EXTEND
            WRITE   24
            
            # Change to bank 0o30
            CA      BANK30
            TS      FBANK

            CAF     BC   # BANK30
            EXTEND
            WRITE   24
            
            # Change to bank 0o14
            CA      BANK14
            TS      FBANK

            CAF     BD   # BANK14
            EXTEND
            WRITE   24
            CAF     BE   # BANK14
            EXTEND
            WRITE   24
            
            # Change to bank 0o23
            CA      BANK23
            TS      FBANK

            CAF     BF   # BANK23
            EXTEND
            WRITE   24
            
            # Change to bank 0o30
            CA      BANK30
            TS      FBANK

            CAF     BG   # BANK30
            EXTEND
            WRITE   24
            
            # Change to bank 0o7
            CA      BANK7
            TS      FBANK

            CAF     BH   # BANK7
            EXTEND
            WRITE   24
            
            # Change to bank 0o12
            CA      BANK12
            TS      FBANK

            CAF     BI   # BANK12
            EXTEND
            WRITE   24
            CAF     BJ   # BANK12
            EXTEND
            WRITE   24
            
            # Change to bank 0o16
            CA      BANK16
            TS      FBANK

            CAF     BK   # BANK16
            EXTEND
            WRITE   24
            
            # Change to bank 0o34
            CA      BANK34
            TS      FBANK

            CAF     BL   # BANK34
            EXTEND
            WRITE   24
            
            # Change to bank 0o33
            CA      BANK33
            TS      FBANK

            CAF     BM   # BANK33
            EXTEND
            WRITE   24
            
            # Change to bank 0o11
            CA      BANK11
            TS      FBANK

            CAF     BN   # BANK11
            EXTEND
            WRITE   24
            
            # Change to bank 0o22
            CA      BANK22
            TS      FBANK

            CAF     AB   # BANK22
            EXTEND
            WRITE   24
            
            # Change to bank 0o0
            CA      BANK0
            TS      FBANK

            CAF     BO   # BANK0
            EXTEND
            WRITE   24
            
            # Change to bank 0o24
            CA      BANK24
            TS      FBANK

            CAF     BP   # BANK24
            EXTEND
            WRITE   24
            
            # Change to bank 0o16
            CA      BANK16
            TS      FBANK

            CAF     BQ   # BANK16
            EXTEND
            WRITE   24
            
            # Change to bank 0o32
            CA      BANK32
            TS      FBANK

            CAF     AV   # BANK32
            EXTEND
            WRITE   24
            
            # Change to bank 0o7
            CA      BANK7
            TS      FBANK

            CAF     BR   # BANK7
            EXTEND
            WRITE   24
            
            # Change to bank 0o33
            CA      BANK33
            TS      FBANK

            CAF     BM   # BANK33
            EXTEND
            WRITE   24
            
            # Change to bank 0o11
            CA      BANK11
            TS      FBANK

            CAF     BN   # BANK11
            EXTEND
            WRITE   24
            
            # Change to bank 0o22
            CA      BANK22
            TS      FBANK

            CAF     AB   # BANK22
            EXTEND
            WRITE   24
            
            # Change to bank 0o17
            CA      BANK17
            TS      FBANK

            CAF     BS   # BANK17
            EXTEND
            WRITE   24
            
            # Change to bank 0o22
            CA      BANK22
            TS      FBANK

            CAF     BT   # BANK22
            EXTEND
            WRITE   24
            
            # Change to bank 0o27
            CA      BANK27
            TS      FBANK

            CAF     BU   # BANK27
            EXTEND
            WRITE   24
            
            # Change to bank 0o31
            CA      BANK31
            TS      FBANK

            CAF     BV   # BANK31
            EXTEND
            WRITE   24
            CAF     BW   # BANK31
            EXTEND
            WRITE   24
            
            # Change to bank 0o30
            CA      BANK30
            TS      FBANK

            CAF     BX   # BANK30
            EXTEND
            WRITE   24
            
            # Change to bank 0o17
            CA      BANK17
            TS      FBANK

            CAF     BY   # BANK17
            EXTEND
            WRITE   24
            
            # Change to bank 0o37
            CA      BANK37
            TS      FBANK

            CAF     BZ   # BANK37
            EXTEND
            WRITE   24
            
            # Change to bank 0o25
            CA      BANK25
            TS      FBANK

            CAF     CA   # BANK25
            EXTEND
            WRITE   24
            
            # Change to bank 0o14
            CA      BANK14
            TS      FBANK

            CAF     CB   # BANK14
            EXTEND
            WRITE   24
            
            # Change to bank 0o16
            CA      BANK16
            TS      FBANK

            CAF     BQ   # BANK16
            EXTEND
            WRITE   24
            
            # Change to bank 0o32
            CA      BANK32
            TS      FBANK

            CAF     AV   # BANK32
            EXTEND
            WRITE   24
            
            # Change to bank 0o16
            CA      BANK16
            TS      FBANK

            CAF     CC   # BANK16
            EXTEND
            WRITE   24
            
            # Change to bank 0o4
            CA      BANK4
            TS      FBANK

            CAF     CD   # BANK4
            EXTEND
            WRITE   24
            
            # Change to bank 0o11
            CA      BANK11
            TS      FBANK

            CAF     CE   # BANK11
            EXTEND
            WRITE   24
            
            # Change to bank 0o6
            CA      BANK6
            TS      FBANK

            CAF     CF   # BANK6
            EXTEND
            WRITE   24
            
            # Change to bank 0o36
            CA      BANK36
            TS      FBANK

            CAF     CG   # BANK36
            EXTEND
            WRITE   24
            
            # Change to bank 0o31
            CA      BANK31
            TS      FBANK

            CAF     AT   # BANK31
            EXTEND
            WRITE   24
            
            # Change to bank 0o5
            CA      BANK5
            TS      FBANK

            CAF     CH   # BANK5
            EXTEND
            WRITE   24
            
            # Change to bank 0o13
            CA      BANK13
            TS      FBANK

            CAF     CI   # BANK13
            EXTEND
            WRITE   24
            
            # Change to bank 0o6
            CA      BANK6
            TS      FBANK

            CAF     CJ   # BANK6
            EXTEND
            WRITE   24
            
            # Change to bank 0o7
            CA      BANK7
            TS      FBANK

            CAF     CK   # BANK7
            EXTEND
            WRITE   24
            
            # Change to bank 0o34
            CA      BANK34
            TS      FBANK

            CAF     CL   # BANK34
            EXTEND
            WRITE   24
            
            # Change to bank 0o15
            CA      BANK15
            TS      FBANK

            CAF     CM   # BANK15
            EXTEND
            WRITE   24
            
            # Change to bank 0o22
            CA      BANK22
            TS      FBANK

            CAF     CN   # BANK22
            EXTEND
            WRITE   24
            
            # Change to bank 0o23
            CA      BANK23
            TS      FBANK

            CAF     CO   # BANK23
            EXTEND
            WRITE   24
            
            # Change to bank 0o26
            CA      BANK26
            TS      FBANK

            CAF     CP   # BANK26
            EXTEND
            WRITE   24
            
            # Change to bank 0o23
            CA      BANK23
            TS      FBANK

            CAF     CQ   # BANK23
            EXTEND
            WRITE   24
            
            # Change to bank 0o20
            CA      BANK20
            TS      FBANK

            CAF     CR   # BANK20
            EXTEND
            WRITE   24
            
            # Change to bank 0o30
            CA      BANK30
            TS      FBANK

            CAF     CS   # BANK30
            EXTEND
            WRITE   24
            
            # Change to bank 0o10
            CA      BANK10
            TS      FBANK

            CAF     CT   # BANK10
            EXTEND
            WRITE   24
            
            # Change to bank 0o33
            CA      BANK33
            TS      FBANK

            CAF     CU   # BANK33
            EXTEND
            WRITE   24
            
            # Change to bank 0o14
            CA      BANK14
            TS      FBANK

            CAF     CV   # BANK14
            EXTEND
            WRITE   24
            
            # Change to bank 0o25
            CA      BANK25
            TS      FBANK

            CAF     CW   # BANK25
            EXTEND
            WRITE   24
            
            # Change to bank 0o11
            CA      BANK11
            TS      FBANK

            CAF     CX   # BANK11
            EXTEND
            WRITE   24
            
            # Change to bank 0o36
            CA      BANK36
            TS      FBANK

            CAF     CY   # BANK36
            EXTEND
            WRITE   24
            
            # Change to bank 0o31
            CA      BANK31
            TS      FBANK

            CAF     CZ   # BANK31
            EXTEND
            WRITE   24
            
            # Change to bank 0o11
            CA      BANK11
            TS      FBANK

            CAF     DA   # BANK11
            EXTEND
            WRITE   24
            CAF     BN   # BANK11
            EXTEND
            WRITE   24
            
            # Change to bank 0o14
            CA      BANK14
            TS      FBANK

            CAF     DB   # BANK14
            EXTEND
            WRITE   24
            
            # Change to bank 0o35
            CA      BANK35
            TS      FBANK

            CAF     AK   # BANK35
            EXTEND
            WRITE   24
            
            # Change to bank 0o23
            CA      BANK23
            TS      FBANK

            CAF     DC   # BANK23
            EXTEND
            WRITE   24
            
            # Change to bank 0o17
            CA      BANK17
            TS      FBANK

            CAF     DD   # BANK17
            EXTEND
            WRITE   24
            
            # Change to bank 0o23
            CA      BANK23
            TS      FBANK

            CAF     DE   # BANK23
            EXTEND
            WRITE   24
            
            # Change to bank 0o15
            CA      BANK15
            TS      FBANK

            CAF     DF   # BANK15
            EXTEND
            WRITE   24
            
            # Change to bank 0o25
            CA      BANK25
            TS      FBANK

            CAF     DG   # BANK25
            EXTEND
            WRITE   24
            
            # Change to bank 0o1
            CA      BANK1
            TS      FBANK

            CAF     DH   # BANK1
            EXTEND
            WRITE   24
            
            # Change to bank 0o26
            CA      BANK26
            TS      FBANK

            CAF     DI   # BANK26
            EXTEND
            WRITE   24
            
            # Change to bank 0o5
            CA      BANK5
            TS      FBANK

            CAF     AS   # BANK5
            EXTEND
            WRITE   24
            
            # Change to bank 0o12
            CA      BANK12
            TS      FBANK

            CAF     DJ   # BANK12
            EXTEND
            WRITE   24
            
            # Change to bank 0o4
            CA      BANK4
            TS      FBANK

            CAF     AU   # BANK4
            EXTEND
            WRITE   24
            
            # Change to bank 0o32
            CA      BANK32
            TS      FBANK

            CAF     AV   # BANK32
            EXTEND
            WRITE   24
            
            # Change to bank 0o36
            CA      BANK36
            TS      FBANK

            CAF     AG   # BANK36
            EXTEND
            WRITE   24
            
            # Change to bank 0o27
            CA      BANK27
            TS      FBANK

            CAF     DK   # BANK27
            EXTEND
            WRITE   24
            
            # Change to bank 0o5
            CA      BANK5
            TS      FBANK

            CAF     DL   # BANK5
            EXTEND
            WRITE   24
            
            # Change to bank 0o15
            CA      BANK15
            TS      FBANK

            CAF     DM   # BANK15
            EXTEND
            WRITE   24
            
            # Change to bank 0o35
            CA      BANK35
            TS      FBANK

            CAF     DN   # BANK35
            EXTEND
            WRITE   24
            
            # Change to bank 0o21
            CA      BANK21
            TS      FBANK

            CAF     DO   # BANK21
            EXTEND
            WRITE   24
            
            # Change to bank 0o1
            CA      BANK1
            TS      FBANK

            CAF     DP   # BANK1
            EXTEND
            WRITE   24

            CA      BANK2
            TS      FBANK
            CAF     MINVAL
            EXTEND
            WRITE   25
            EXTEND
            WRITE   25
            EXTEND
            WRITE   25
            TCF LAUNCH

BANK        2
BANK
MINVAL      DEC      0
MAXVAL      OCT      77777


BANK        0
AQ          DEC		23272
BO          DEC		17434

BANK        1
AF          DEC		31554
AY          DEC		12148
DH          DEC		20968
DP          DEC		1326

BANK        4
AU          DEC		1473
AW          DEC		28577
AX          DEC		23144
CD          DEC		16080

BANK        5
AO          DEC		929
AS          DEC		5658
AZ          DEC		12762
CH          DEC		3198
DL          DEC		26717

BANK        6
AR          DEC		12020
CF          DEC		11444
CJ          DEC		8965

BANK        7
BH          DEC		1477
BR          DEC		25665
CK          DEC		20661

BANK        10
CT          DEC		26718

BANK        11
BB          DEC		1669
BN          DEC		26817
CE          DEC		23528
CX          DEC		24838
DA          DEC		20665

BANK        12
BI          DEC		25314
BJ          DEC		1668
DJ          DEC		6269

BANK        13
CI          DEC		17127

BANK        14
BD          DEC		26017
BE          DEC		13777
CB          DEC		2525
CV          DEC		23062
DB          DEC		13358

BANK        15
CM          DEC		11316
DF          DEC		23578
DM          DEC		29792

BANK        16
AA          DEC		26701
BK          DEC		30530
BQ          DEC		1449
CC          DEC		32673

BANK        17
AH          DEC		12496
BS          DEC		23063
BY          DEC		26714
DD          DEC		3094

BANK        20
CR          DEC		8565

BANK        21
DO          DEC		23819

BANK        22
AB          DEC		13359
AC          DEC		23088
BT          DEC		16909
CN          DEC		6042

BANK        23
BF          DEC		16488
CO          DEC		2909
CQ          DEC		17123
DC          DEC		6365
DE          DEC		17144

BANK        24
AE          DEC		26245
BP          DEC		3037

BANK        25
AL          DEC		3021
CA          DEC		8538
CW          DEC		3339
DG          DEC		2768

BANK        26
AP          DEC		13520
CP          DEC		3078
DI          DEC		11572

BANK        27
BU          DEC		3110
DK          DEC		12320

BANK        30
AJ          DEC		24715
BC          DEC		21314
BG          DEC		25352
BX          DEC		20667
CS          DEC		20656

BANK        31
AT          DEC		3005
BV          DEC		17091
BW          DEC		8563
CZ          DEC		8545

BANK        32
AV          DEC		834
BA          DEC		6370

BANK        33
BM          DEC		20877
CU          DEC		29793

BANK        34
AN          DEC		838
BL          DEC		31809
CL          DEC		4200

BANK        35
AI          DEC		22888
AK          DEC		1050
AM          DEC		3161
DN          DEC		31255

BANK        36
AG          DEC		31649
CG          DEC		6106
CY          DEC		17143

BANK        37
AD          DEC		7435
BZ          DEC		19331

            SETLOC    4000        # NOOP all the interupts
            INHINT
            TCF       STARTUP
            NOOP
            NOOP
            NOOP

            RESUME    # T6RUPT
            NOOP
            NOOP
            NOOP

            RESUME    # T5RUPT
            NOOP
            NOOP
            NOOP

            RESUME    # T3RUPT
            NOOP
            NOOP
            NOOP

            RESUME    # T4RUPT
            NOOP
            NOOP
            NOOP

            RESUME    # KEYRUPT1
            NOOP
            NOOP
            NOOP

            RESUME    # KEYRUPT2
            NOOP
            NOOP
            NOOP

            RESUME    # UPRUPT
            NOOP
            NOOP
            NOOP

            RESUME    # DOWNRUPT
            NOOP
            NOOP
            NOOP

            RESUME    # RADAR RUPT
            NOOP
            NOOP
            NOOP

            RESUME    # RUPT10
            NOOP
            NOOP
            NOOP
       
STARTUP
            CAF		AA # R
            EXTEND
            WRITE	162
            CAF		AB # I
            EXTEND
            WRITE	111
            CAF		AC # T
            EXTEND
            WRITE	102
            CAF		AD # S
            EXTEND
            WRITE	152
            CAF		AE # E
            EXTEND
            WRITE	0
            CAF		AF # C
            EXTEND
            WRITE	130
            CAF		AG # {
            EXTEND
            WRITE	17
            CAF		AH # T
            EXTEND
            WRITE	132
            CAF		AI # h
            EXTEND
            WRITE	65
            CAF		AJ # e
            EXTEND
            WRITE	134
            CAF		AK # _
            EXTEND
            WRITE	133
            CAF		AL # s
            EXTEND
            WRITE	166
            CAF		AM # t
            EXTEND
            WRITE	106
            CAF		AN # a
            EXTEND
            WRITE	34
            CAF		AO # r
            EXTEND
            WRITE	66
            CAF		AP # s
            EXTEND
            WRITE	46
            CAF		AQ # _
            EXTEND
            WRITE	153
            CAF		AR # A
            EXTEND
            WRITE	120
            CAF		AS # r
            EXTEND
            WRITE	46
            CAF		AT # E
            EXTEND
            WRITE	100
            CAF		AU # _
            EXTEND
            WRITE	103
            CAF		AV # c
            EXTEND
            WRITE	134
            CAF		AW # a
            EXTEND
            WRITE	34
            CAF		AX # l
            EXTEND
            WRITE	35
            CAF		AY # l
            EXTEND
            WRITE	55
            CAF		AZ # i
            EXTEND
            WRITE	155
            CAF		BA # n
            EXTEND
            WRITE	135
            CAF		BB # g
            EXTEND
            WRITE	144
            CAF		BC # }
            EXTEND
            WRITE	147
            TCF STARTUP
AA          OCT	20620
AB          OCT	10141
AC          OCT	40276
AD          OCT	30574
AE          OCT	50327
AF          OCT	30030
AG          OCT	30001
AH          OCT	40560
AI          OCT	217
AJ          OCT	50007
AK          OCT	70261
AL          OCT	30140
AM          OCT	40176
AN          OCT	10625
AO          OCT	20611
AP          OCT	30737
AQ          OCT	70132
AR          OCT	10643
AS          OCT	20222
AT          OCT	50764
AU          OCT	70631
AV          OCT	30060
AW          OCT	10712
AX          OCT	40304
AY          OCT	40066
AZ          OCT	10450
BA          OCT	60455
BB          OCT	70422
BC          OCT	50231

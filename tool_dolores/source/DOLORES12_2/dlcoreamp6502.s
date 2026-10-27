************************************************************
* dolores - DLCOREAMP6502 (disassembly)
*
* Disassembled from the original binary (5664 bytes, $8000-$961F).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../../README.txt for attribution and terms.
* Load address: $8000. Entry point(s): $8000, $808C (NMOS 6502 opcodes only).
************************************************************

               ORG    $8000

KEYBD          EQU    $C000
RAMRDOFF       EQU    $C002
RAMRDON        EQU    $C003
RAMWRTOFF      EQU    $C004
RAMWRTON       EQU    $C005
CLR80VID       EQU    $C00C
SET80VID       EQU    $C00D
STROBE         EQU    $C010
RDVBL          EQU    $C019
TXTCLR         EQU    $C050
TXTSET         EQU    $C051
MIXCLR         EQU    $C052
MIXSET         EQU    $C053
LOWSCR         EQU    $C054
HISCR          EQU    $C055
AN3OFF         EQU    $C05E
AN3ON          EQU    $C05F
HOME           EQU    $FC58

START          JSR    SUB8B96
               LDA    #$4C
               STA    $03F5
               LDA    #$8C
               STA    $03F6
               LDA    #$80
               STA    $03F7
               RTS
               HEX    00
D8014          HEX    00
D8015          HEX    00
D8016          HEX    00
D8017          HEX    00
D8018          HEX    00
D8019          HEX    0000
D801B          HEX    00
D801C          HEX    0000
D801E          HEX    000000
D8021          HEX    0000
D8023          HEX    00
D8024          HEX    00
D8025          HEX    00
D8026          HEX    00
D8027          HEX    00
D8028          HEX    00
D8029          HEX    00
D802A          HEX    00
D802B          HEX    00
D802C          HEX    00
D802D          HEX    00
D802E          HEX    00
D802F          HEX    00
D8030          HEX    00
D8031          HEX    01
SUB8032        LDA    STROBE
               JSR    $C300
               LDA    TXTCLR
               STA    SET80VID
               LDA    AN3OFF
               STA    MIXCLR
               STA    KEYBD
               LDA    LOWSCR
               LDA    #$00
               JSR    SUB9099
               JSR    SUB9420
               JSR    SUB9126
               JSR    SUB9449
               LDA    #$01
               STA    D8014
               LDA    #$2F
               STA    D802E
               LDA    #$F0
               STA    $36
               LDA    #$FD
               STA    $37
               JSR    $03EA
               RTS
SUB806E        LDA    STROBE
               STA    KEYBD
               STA    CLR80VID
               LDA    AN3ON
               LDA    TXTSET
               LDA    LOWSCR
               JSR    $F399
               JSR    HOME
               LDX    #$00
               JSR    $FE95
               RTS
D808C          STA    KEYBD
               CMP    #$88
               BNE    L8096
               JMP    L8159
L8096          CMP    #$89
               BNE    L809D
               JMP    L815F
L809D          CMP    #$8D
               BNE    L80A4
               JMP    L81C5
L80A4          CMP    #$8F
               BNE    L80AB
               JMP    L8200
L80AB          CMP    #$D7
               BNE    L80B2
               JMP    L824C
L80B2          CMP    #$A0
               BNE    L80B9
               JMP    L828E
L80B9          CMP    #$8E
               BNE    L80C0
               JMP    L82A0
L80C0          CMP    #$46
               BNE    L80C7
               JMP    L82EC
L80C7          CMP    #$53
               BNE    L80CE
               JMP    L819B
L80CE          CMP    #$44
               BNE    L80D5
               JMP    L81B0
L80D5          CMP    #$4C
               BNE    L80DC
               JMP    L8331
L80DC          CMP    #$43
               BNE    L80E3
               JMP    L83A0
L80E3          CMP    #$52
               BNE    L80EA
               JMP    L848A
L80EA          CMP    #$48
               BNE    L80F1
               JMP    L832B
L80F1          CMP    #$4D
               BNE    L80F8
               JMP    L8165
L80F8          CMP    #$54
               BNE    L80FF
               JMP    L8128
L80FF          CMP    #$47
               BNE    L8106
               JMP    L813E
L8106          CMP    #$B7
               BNE    L810D
               JMP    L8110
L810D          JMP    $DEC9
L8110          JSR:   $B1
               JSR    $E6F8
               STX    D802F
               JSR    $DEBE
               JSR    $E6F8
               STX    D8030
               JSR    SUB859B
               JMP    L8554
L8128          LDA    #$01
               STA    D802F
               LDA    #$03
               STA    D8030
               JSR    SUB859B
               JSR    SUB8710
               LDA    TXTSET
               JMP    L8554
L813E          LDA    TXTCLR
               LDA    #$2F
               STA    D802E
               LDA    MIXCLR
               LDA    #$03
               STA    D802F
               LDA    #$01
               STA    D8030
               JSR    SUB859B
               JMP    L8554
L8159          JSR    SUB8032
               JMP    L8554
L815F          JSR    SUB806E
               JMP    L8554
L8165          LDA    D802E
               CMP    #$2F
               BEQ    L817B
               LDA    MIXCLR
               LDA    #$2F
               STA    D802E
               LDA    #$00
               STA    $22
               JMP    L8554
L817B          LDA    MIXSET
               LDA    #$A0
               JSR    SUB9420
               JSR    SUB9449
               LDA    #$27
               STA    D802E
               LDA    #$50
               STA    $21
               LDA    #$14
               STA    $22
               LDA    #$14
               JSR    $FB5B
               JMP    L8554
L819B          JSR:   $B1
               JSR    $E6F8
               STX    $E9
               CPX    #$03
               BCC    L81AA
               JMP    L8557
L81AA          JSR    SUB87FD
               JMP    L8554
L81B0          JSR:   $B1
               JSR    $E6F8
               STX    $E9
               CPX    #$04
               BCC    L81BF
               JMP    L8557
L81BF          JSR    SUB855A
               JMP    L8554
L81C5          JSR:   $B1
               JSR    $E6F8
               STX    $E0
               JSR    $DEBE
               JSR    $E6F8
               STX    $E1
               CMP    #$2C
               BNE    L81E8
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L81E8
               JMP    L8557
L81E8          LDA    $E0
               CMP    #$50
               BCC    L81F1
               JMP    L8557
L81F1          LDA    $E1
               CMP    #$30
               BCC    L81FA
               JMP    L8557
L81FA          JSR    SUB8B18
               JMP    L8554
L8200          JSR:   $B1
               JSR    $E6F8
               STX    $E1
               JSR    $DEBE
               JSR    $E6F8
               STX    $E8
               JSR    $DEBE
               JSR    $E6F8
               STX    $E0
               CMP    #$2C
               BNE    L822B
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L822B
               JMP    L8557
L822B          LDA    $E0
               CMP    #$50
               BCC    L8234
               JMP    L8557
L8234          LDA    $E1
               CMP    #$30
               BCC    L823D
               JMP    L8557
L823D          LDA    $E8
               CMP    #$30
               BCC    L8246
               JMP    L8557
L8246          JSR    SUB8968
               JMP    L8554
L824C          JSR:   $B1
               JSR    $E6F8
               STX    $E0
               JSR:   $B1
               JSR    $E6F8
               STX    $E1
               JSR:   $B1
               JSR    $DFE3
               JSR    $EAF9
               JSR    $DD6A
               JSR:   $B1
               LDA    $E0
               CMP    #$50
               BCC    L8274
               JMP    L8557
L8274          LDA    $E1
               CMP    #$30
               BCC    L827D
               JMP    L8557
L827D          JSR    SUB8AAB
               LDY    #$00
               LDA    #$00
               STA    ($83),Y
               LDA    $E9
               INY
               STA    ($83),Y
               JMP    L8554
L828E          JSR:   $B1
               JSR    $E6F8
               CPX    #$10
               BCC    L829B
               JMP    L8557
L829B          STX    $E3
               JMP    L8554
L82A0          JSR:   $B1
               JSR    $E6F8
               STX    $E0
               JSR    $DEBE
               JSR    $E6F8
               STX    $E7
               JSR    $DEBE
               JSR    $E6F8
               STX    $E1
               CMP    #$2C
               BNE    L82CB
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L82CB
               JMP    L8557
L82CB          LDA    $E0
               CMP    #$50
               BCC    L82D4
               JMP    L8557
L82D4          LDA    $E1
               CMP    #$30
               BCC    L82DD
               JMP    L8557
L82DD          LDA    $E7
               CMP    #$50
               BCC    L82E6
               JMP    L8557
L82E6          JSR    SUB88BB
               JMP    L8554
L82EC          JSR:   $B1
               JSR    $E6F8
               STX    D802A
               JSR    $DEBE
               JSR    $E6F8
               STX    D802B
               CMP    #$2C
               BNE    L8311
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L8311
               JMP    L8557
L8311          LDA    D802A
               CMP    #$50
               BCC    L831B
               JMP    L8557
L831B          LDA    D802B
               CMP    #$30
               BCC    L8325
               JMP    L8557
L8325          JSR    SUB8F04
               JMP    L8554
L832B          JSR    SUB881A
               JMP    L8554
L8331          JSR:   $B1
               JSR    $E6F8
               STX    $E0
               JSR    $DEBE
               JSR    $E6F8
               STX    $E1
               JSR    $DEBE
               JSR    $E6F8
               STX    $E7
               JSR    $DEBE
               JSR    $E6F8
               STX    $E8
               CMP    #$2C
               BNE    L8364
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L8364
               JMP    L8557
L8364          LDA    $E0
               CMP    #$50
               BCC    L836D
               JMP    L8557
L836D          LDA    $E1
               CMP    #$30
               BCC    L8376
               JMP    L8557
L8376          LDA    $E8
               CMP    #$30
               BCC    L837F
               JMP    L8557
L837F          LDA    $E7
               CMP    #$50
               BCC    L8388
               JMP    L8557
L8388          LDA    $E0
               CMP    $E7
               BNE    L839A
               LDA    $E1
               CMP    $E8
               BNE    L839A
               JSR    SUB8B18
               JMP    L8554
L839A          JSR    SUB8BB9
               JMP    L8554
L83A0          LDA    #$00
               STA    D8027
               STA    D8029
               JSR:   $B1
               JSR    $E6F8
               STX    $EC
               JSR    $DEBE
               JSR    $E6F8
               STX    $ED
               JSR    $DEBE
               JSR    $E6F8
               STX    D8026
               CMP    #$2C
               BNE    L83D7
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L83D4
               JMP    L8557
L83D4          INC    D8027
L83D7          CMP    #$2C
               BNE    L83EE
               JSR    $DEBE
               JSR    $E6F8
               STX    D8028
               CPX    #$10
               BCC    L83EB
               JMP    L8557
L83EB          INC    D8027
L83EE          LDA    $EC
               CMP    #$50
               BCC    L83F7
               JMP    L8557
L83F7          LDA    $ED
               CMP    #$30
               BCC    L8400
               JMP    L8557
L8400          LDA    D8026
               CMP    #$50
               BCC    L840A
               JMP    L8557
L840A          LDA    D8026
               CMP    $EC
               BCC    L8414
               JMP    L8454
L8414          CMP    $ED
               BCC    L841B
               JMP    L8454
L841B          CLC
               ADC    $EC
               CMP    #$50
               BCC    L8425
               JMP    L8454
L8425          CLC
               LDA    D8026
               ADC    $ED
               CMP    D802E
               BEQ    L8435
               BCC    L8435
               JMP    L8454
L8435          LDA    #$4C
               STA    SUB8877
               STA    SUB8B06
               LDA    #$BB
               STA    SUB8877+1
               LDA    #$88
               STA    D8879
               LDA    #$18
               STA    SUB8B06+1
               LDA    #$8B
               STA    D8B08
               JMP    L846C
L8454          LDA    #$A5
               STA    SUB8877
               STA    SUB8B06
               LDA    #$E0
               STA    SUB8877+1
               STA    SUB8B06+1
               LDA    #$EA
               STA    D8879
               STA    D8B08
L846C          LDA    D8027
               BEQ    L8484
               JSR    SUB8DC5
               LDA    D8028
               STA    $E3
               DEC    D8027
               LDA    D8027
               BNE    L8484
               JMP    L8554
L8484          JSR    SUB8CC4
               JMP    L8554
L848A          LDA    #$00
               STA    D8027
               JSR:   $B1
               JSR    $E6F8
               STX    $E0
               JSR    $DEBE
               JSR    $E6F8
               STX    $E1
               STX    $09
               JSR    $DEBE
               JSR    $E6F8
               STX    $E7
               JSR    $DEBE
               JSR    $E6F8
               STX    $E8
               STX    $1F
               CMP    #$2C
               BNE    L84C9
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L84C6
               JMP    L8557
L84C6          INC    D8027
L84C9          CMP    #$2C
               BNE    L84E0
               JSR    $DEBE
               JSR    $E6F8
               STX    D8028
               CPX    #$10
               BCC    L84DD
               JMP    L8557
L84DD          INC    D8027
L84E0          LDA    $E0
               CMP    #$50
               BCC    L84E9
               JMP    L8557
L84E9          LDA    $E1
               CMP    #$30
               BCC    L84F2
               JMP    L8557
L84F2          LDA    $E7
               CMP    #$50
               BCC    L84FB
               JMP    L8557
L84FB          LDA    $E8
               CMP    #$30
               BCC    L8504
               JMP    L8557
L8504          LDA    $E0
               CMP    $E7
               BNE    L8516
               LDA    $E1
               CMP    $E8
               BNE    L8516
               JSR    SUB8B18
               JMP    L8554
L8516          LDA    D8027
               BEQ    L852E
               JSR    SUB8EE3
               LDA    D8028
               STA    $E3
               DEC    D8027
               LDA    D8027
               BNE    L852E
               JMP    L8554
L852E          LDA    $09
               STA    $E1
               LDA    $1F
               STA    $E8
               JSR    SUB88BB
               JSR    SUB8968
               LDA    $E0
               LDX    $E7
               STA    $E7
               STX    $E0
               JSR    SUB8968
               LDA    $1F
               STA    $E1
               JSR    SUB88BB
               JMP    L8554
               HEX    20DDFB
L8554          JMP    $D995
L8557          JMP    $E199
SUB855A        LDA    $E9
               CMP    #$02
               BCS    L856A
               LDA    #$01
               STA    D8014
               LDA    #$94
               JMP    L857F
L856A          CMP    #$03
               BEQ    L8578
               LDA    #$02
               STA    D8014
               LDA    #$95
               JMP    L857F
L8578          LDA    #$03
               STA    D8014
               LDA    #$96
L857F          STA    D88EF+2
               STA    D89A8+2
               STA    D89E5+2
               STA    D8A15+2
               STA    D8A4E+2
               STA    D8A77+2
               STA    D8A9D+2
               STA    D8AB4+2
               STA    D8B25+2
               RTS
SUB859B        LDA    D802F
               CMP    D8030
               BNE    L85A4
               RTS
L85A4          CMP    #$01
               BNE    L85CB
               LDX    #$04
               STX    L86CE+2
               STX    L86F1+2
               LDX    #$05
               STX    D86D4+2
               STX    D86F7+2
               LDX    #$06
               STX    D86DA+2
               STX    D86FD+2
               LDX    #$07
               STX    D86E0+2
               STX    D8703+2
               JMP    L861A
L85CB          CMP    #$02
               BNE    L85F2
               LDX    #$08
               STX    L86CE+2
               STX    L86F1+2
               LDX    #$09
               STX    D86D4+2
               STX    D86F7+2
               LDX    #$0A
               STX    D86DA+2
               STX    D86FD+2
               LDX    #$0B
               STX    D86E0+2
               STX    D8703+2
               JMP    L861A
L85F2          CMP    #$03
               BNE    L8619
               LDX    #$0C
               STX    L86CE+2
               STX    L86F1+2
               LDX    #$0D
               STX    D86D4+2
               STX    D86F7+2
               LDX    #$0E
               STX    D86DA+2
               STX    D86FD+2
               LDX    #$0F
               STX    D86E0+2
               STX    D8703+2
               JMP    L861A
L8619          RTS
L861A          LDA    D8030
               CMP    #$01
               BNE    L8644
               LDX    #$04
               STX    D86D1+2
               STX    D86F4+2
               LDX    #$05
               STX    D86D7+2
               STX    D86FA+2
               LDX    #$06
               STX    D86DD+2
               STX    D8700+2
               LDX    #$07
               STX    D86E3+2
               STX    D8706+2
               JMP    L8693
L8644          CMP    #$02
               BNE    L866B
               LDX    #$08
               STX    D86D1+2
               STX    D86F4+2
               LDX    #$09
               STX    D86D7+2
               STX    D86FA+2
               LDX    #$0A
               STX    D86DD+2
               STX    D8700+2
               LDX    #$0B
               STX    D86E3+2
               STX    D8706+2
               JMP    L8693
L866B          CMP    #$03
               BNE    L8692
               LDX    #$0C
               STX    D86D1+2
               STX    D86F4+2
               LDX    #$0D
               STX    D86D7+2
               STX    D86FA+2
               LDX    #$0E
               STX    D86DD+2
               STX    D8700+2
               LDX    #$0F
               STX    D86E3+2
               STX    D8706+2
               JMP    L8693
L8692          RTS
L8693          JSR    SUB8747
               STA    RAMWRTON
               LDA    L86CE+2
               STA    L86CE+2
               LDA    D86D1+2
               STA    D86D1+2
               LDA    D86D4+2
               STA    D86D4+2
               LDA    D86D7+2
               STA    D86D7+2
               LDA    D86DA+2
               STA    D86DA+2
               LDA    D86DD+2
               STA    D86DD+2
               LDA    D86E0+2
               STA    D86E0+2
               LDA    D86E3+2
               STA    D86E3+2
               STA    RAMRDON
               LDX    #$00
L86CE          LDA    $0400,X
D86D1          STA    $1000,X
D86D4          LDA    $0500,X
D86D7          STA    $1100,X
D86DA          LDA    $0600,X
D86DD          STA    $1200,X
D86E0          LDA    $0700,X
D86E3          STA    $1300,X
               INX
               BNE    L86CE
               STA    RAMWRTOFF
               STA    RAMRDOFF
               LDX    #$00
L86F1          LDA    $0400,X
D86F4          STA    $0C00,X
D86F7          LDA    $0500,X
D86FA          STA    $0D00,X
D86FD          LDA    $0600,X
D8700          STA    $0E00,X
D8703          LDA    $0700,X
D8706          STA    $0F00,X
               INX
               BNE    L86F1
               JSR    SUB87A2
               RTS
SUB8710        JSR    SUB8747
               STA    RAMRDON
               STA    RAMWRTON
               LDA    #$A0
               LDX    #$00
L871D          STA    $0400,X
               STA    $0500,X
               STA    $0600,X
               STA    $0700,X
               INX
               BNE    L871D
               STA    RAMWRTOFF
               STA    RAMRDOFF
               LDX    #$00
L8734          STA    $0400,X
               STA    $0500,X
               STA    $0600,X
               STA    $0700,X
               INX
               BNE    L8734
               JSR    SUB87A2
               RTS
SUB8747        LDA    $0478
               STA    $9620
               LDA    $04F8
               STA    $9621
               LDA    $0578
               STA    $9622
               LDA    $05F8
               STA    $9623
               LDA    $047C
               STA    $9624
               LDA    $04FC
               STA    $9625
               LDA    $057C
               STA    $9626
               LDA    $05FC
               STA    $9627
               LDA    $067C
               STA    $9628
               LDA    $06FC
               STA    $9629
               LDA    $077C
               STA    $962A
               LDA    $0678
               STA    $962B
               LDA    $06F8
               STA    $962C
               LDA    $047E
               STA    $962D
               LDA    $04FE
               STA    $962E
               RTS
SUB87A2        LDA    $9620
               STA    $0478
               LDA    $9621
               STA    $04F8
               LDA    $9622
               STA    $0578
               LDA    $9623
               STA    $05F8
               LDA    $9624
               STA    $047C
               LDA    $9625
               STA    $04FC
               LDA    $9626
               STA    $057C
               LDA    $9627
               STA    $05FC
               LDA    $9628
               STA    $067C
               LDA    $9629
               STA    $06FC
               LDA    $962A
               STA    $077C
               LDA    $962B
               STA    $0678
               LDA    $962C
               STA    $06F8
               LDA    $962D
               STA    $047E
               LDA    $962E
               STA    $04FE
               RTS
SUB87FD        CMP    RDVBL
               BPL    SUB87FD
L8802          CMP    RDVBL
               BMI    L8802
               STA    KEYBD
               LDA    $E9
               CMP    #$02
               BEQ    L8816
               LDA    LOWSCR
               JMP    L8819
L8816          LDA    HISCR
L8819          RTS
SUB881A        LDA    D8014
               CMP    #$03
               BNE    L884A
               LDX    #$00
               LDA    #$00
L8825          STA    $0C00,X
               STA    $0D00,X
               STA    $0E00,X
               STA    $0F00,X
               INX
               BNE    L8825
               STA    RAMWRTON
L8837          STA    $0C00,X
               STA    $0D00,X
               STA    $0E00,X
               STA    $0F00,X
               INX
               BNE    L8837
               STA    RAMWRTOFF
               RTS
L884A          LDX    $E3
               LDA    D9530,X
               TAY
               LDA    D8014
               CMP    #$02
               BEQ    L8867
               TYA
               JSR    SUB9099
               LDA    D802E
               CMP    #$27
               BEQ    L8866
               TYA
               JSR    SUB9472
L8866          RTS
L8867          TYA
               JSR    SUB9126
               LDA    D802E
               CMP    #$27
               BEQ    L8876
               TYA
               JSR    SUB949F
L8876          RTS
SUB8877        LDA    $E0
D8879          NOP
               CMP    $E7
               BCC    L8888
               BEQ    L88BA
               LDX    $E7
               STA    D802D
               STX    D802C
L8888          LDA    $E0
               BPL    L8893
               LDX    #$00
               STX    $E0
               JMP    L889B
L8893          CMP    #$50
               BCC    L889B
               LDA    #$4F
               STA    $E0
L889B          LDA    $E7
               BPL    L88A6
               LDX    #$00
               STX    $E7
               JMP    L88AE
L88A6          CMP    #$50
               BCC    L88AE
               LDA    #$4F
               STA    $E7
L88AE          LDA    $E1
               BPL    L88B3
               RTS
L88B3          CMP    D802E
               BEQ    SUB88BB
               BCC    SUB88BB
L88BA          RTS
SUB88BB        LDA    $E0
               CMP    $E7
               BCC    L88D1
               BEQ    L88CE
               LDX    $E7
               STA    D802D
               STX    D802C
               JMP    L88D9
L88CE          JMP    SUB8B18
L88D1          STA    D802C
               LDA    $E7
               STA    D802D
L88D9          SEC
               SBC    D802C
               CLC
               ADC    #$01
               STA    D8015
               INC    D802D
               LDA    $E1
               LSR
               TAX
               LDA    D9540,X
               STA    $06
D88EF          LDA    D9400,X
               STA    $07
               LDA    $E1
               BIT    D8031
               BEQ    L88FE
               JMP    L8913
L88FE          LDA    $E3
               STA    $E4
               TAX
               LDA    D9200,X
               STA    $E5
               LDA    #$F0
               STA    D893A+1
               STA    D8956+1
               JMP    L8928
L8913          LDX    $E3
               LDA    D9520,X
               STA    $E4
               TAX
               LDA    D9200,X
               STA    $E5
               LDA    #$0F
               STA    D893A+1
               STA    D8956+1
L8928          LDA    D802C
               BIT    D8031
               BNE    L8952
               LSR
               TAY
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
D893A          AND    #$F0
               ORA    $E5
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               INC    D802C
               LDA    D802C
               CMP    D802D
               BCC    L8928
               RTS
L8952          LSR
               TAY
               LDA    ($06),Y
D8956          AND    #$F0
               ORA    $E4
               STA    ($06),Y
               INC    D802C
               LDA    D802C
               CMP    D802D
               BCC    L8928
               RTS
SUB8968        LDA    $E1
               CMP    $E8
               BCC    L897C
               BEQ    L8979
               LDX    $E8
               STA    $E8
               STX    $E1
               JMP    L897C
L8979          JMP    SUB8B18
L897C          LDA    $E8
               SEC
               SBC    $E1
               CLC
               ADC    #$01
               STA    D8015
               LDA    $E0
               BIT    D8031
               BEQ    L8991
               JMP    L8A37
L8991          LSR
               TAY
               LDA    $E1
               LSR
               STA    D8016
               LDA    $E1
               BIT    D8031
               BEQ    L89D6
               LDX    D8016
               LDA    D9540,X
               STA    $06
D89A8          LDA    D9400,X
               STA    $07
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               TAX
               LDA    D9300,X
               AND    #$0F
               STA    $E5
               LDX    $E3
               LDA    D9520,X
               ORA    $E5
               TAX
               LDA    D9200,X
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               INC    D8016
               DEC    D8015
L89D6          LDA    D8015
               CMP    #$02
               BCC    L8A07
               LDX    D8016
               LDA    D9540,X
               STA    $06
D89E5          LDA    D9400,X
               STA    $07
               LDX    $E3
               LDA    D9530,X
               TAX
               LDA    D9200,X
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               DEC    D8015
               DEC    D8015
               INC    D8016
               JMP    L89D6
L8A07          LDA    D8015
               BNE    L8A0D
               RTS
L8A0D          LDX    D8016
               LDA    D9540,X
               STA    $06
D8A15          LDA    D9400,X
               STA    $07
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               TAX
               LDA    D9300,X
               AND    #$F0
               ORA    $E3
               TAX
               LDA    D9200,X
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               RTS
L8A37          LSR
               TAY
               LDA    $E1
               LSR
               STA    D8016
               LDA    $E1
               BIT    D8031
               BEQ    L8A68
               LDX    D8016
               LDA    D9540,X
               STA    $06
D8A4E          LDA    D9400,X
               STA    $07
               LDA    ($06),Y
               AND    #$0F
               STA    $E5
               LDX    $E3
               LDA    D9520,X
               ORA    $E5
               STA    ($06),Y
               INC    D8016
               DEC    D8015
L8A68          LDA    D8015
               CMP    #$02
               BCC    L8A8F
               LDX    D8016
               LDA    D9540,X
               STA    $06
D8A77          LDA    D9400,X
               STA    $07
               LDX    $E3
               LDA    D9530,X
               STA    ($06),Y
               DEC    D8015
               DEC    D8015
               INC    D8016
               JMP    L8A68
L8A8F          LDA    D8015
               BNE    L8A95
               RTS
L8A95          LDX    D8016
               LDA    D9540,X
               STA    $06
D8A9D          LDA    D9400,X
               STA    $07
               LDA    ($06),Y
               AND    #$F0
               ORA    $E3
               STA    ($06),Y
               RTS
SUB8AAB        LDA    $E1
               LSR
               TAX
               LDA    D9540,X
               STA    $06
D8AB4          LDA    D9400,X
               STA    $07
               LDA    $E0
               BIT    D8031
               BNE    L8AE8
               LSR
               TAY
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               TAX
               LDA    D9300,X
               STA    $E9
               LDA    $E1
               AND    #$01
               BEQ    L8AE1
               LDA    $E9
               AND    #$F0
               LSR
               LSR
               LSR
               LSR
               STA    $E9
               RTS
L8AE1          LDA    $E9
               AND    #$0F
               STA    $E9
               RTS
L8AE8          LSR
               TAY
               LDA    ($06),Y
               STA    $E9
               LDA    $E1
               AND    #$01
               BEQ    L8AFF
               LDA    $E9
               AND    #$F0
               LSR
               LSR
               LSR
               LSR
               STA    $E9
               RTS
L8AFF          LDA    $E9
               AND    #$0F
               STA    $E9
               RTS
SUB8B06        LDA    $E0
D8B08          NOP
               CMP    #$50
               BCC    L8B0E
               RTS
L8B0E          LDA    $E1
               CMP    D802E
               BEQ    SUB8B18
               BCC    SUB8B18
               RTS
SUB8B18        LDA    $E3
               STA    $E4
               LDA    $E1
               LSR
               TAX
               LDA    D9540,X
               STA    $06
D8B25          LDA    D9400,X
               STA    $07
               LDX    $E3
               LDA    $E0
               BIT    D8031
               BNE    L8B6F
               LSR
               TAY
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               STA    $E5
               LDA    D9200,X
               STA    $E4
               LDA    $E1
               AND    #$01
               BEQ    L8B5C
               LDA    $E5
               AND    #$0F
               STA    $E5
               LDA    D9520,X
               TAX
               LDA    D9200,X
               STA    $E4
               JMP    L8B62
L8B5C          LDA    $E5
               AND    #$F0
               STA    $E5
L8B62          LDA    $E4
               ORA    $E5
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               RTS
L8B6F          LSR
               TAY
               LDA    ($06),Y
               STA    $E5
               LDA    $E1
               AND    #$01
               BEQ    L8B89
               LDA    $E5
               AND    #$0F
               STA    $E5
               LDA    D9520,X
               STA    $E4
               JMP    L8B8F
L8B89          LDA    $E5
               AND    #$F0
               STA    $E5
L8B8F          LDA    $E4
               ORA    $E5
               STA    ($06),Y
               RTS
SUB8B96        LDA    #$00
               STA    D8018
               STA    D8017
               STA    $3C
               LDA    #$80
               STA    $3D
               LDA    #$FF
               STA    $3E
               LDA    #$9F
               STA    $3F
               LDA    #$00
               STA    $42
               LDA    #$80
               STA    $43
               SEC
               JMP    $C311
               HEX    60
SUB8BB9        LDA    $E0
               CMP    $E7
               BCC    L8BD0
               LDX    $E7
               STA    $E7
               STX    $E0
               LDA    $E1
               LDX    $E8
               STA    $E8
               STX    $E1
               JMP    L8BE4
L8BD0          LDA    $E1
               CMP    $E8
               BCC    L8BE4
               LDX    $E8
               STA    $E8
               STX    $E1
               LDX    $E7
               LDA    $E0
               STA    $E7
               STX    $E0
L8BE4          LDA    $E0
               SEC
               SBC    $E7
               BEQ    L8C05
               BCS    L8C0D
               EOR    #$FF
               CLC
               ADC    #$01
               STA    D801C
               LDA    $E0
               STA    D8019
               LDA    $E1
               STA    D801B
               SEC
               SBC    $E8
               JMP    L8C1D
L8C05          JSR    SUB8968
               RTS
L8C09          JSR    SUB88BB
               RTS
L8C0D          STA    D801C
               LDA    $E7
               STA    D8019
               LDA    $E8
               STA    D801B
               SEC
               SBC    $E1
L8C1D          BCS    L8C2A
               EOR    #$FF
               ADC    #$01
               STA    D801E
               LDA    #$EE
               BNE    L8C31
L8C2A          BEQ    L8C09
               STA    D801E
               LDA    #$CE
L8C31          STA    D8C76
               STA    D8CAC
               LDA    D801C
               CMP    D801E
               BCS    L8C42
               JMP    L8C7C
L8C42          CLC
               ADC    #$01
               STA    $E6
               HEX    3A4A8D21804C578C608D2180C6E6F0F8
               HEX    AD198085E0AD1B8085E120188BEE1980
               HEX    AD218038ED1E80B0E06D1C808D2180
D8C76          HEX    EE1B804C538C
L8C7C          LDX    $E1
               CPX    D801B
               BNE    L8C85
               LDX    $E8
L8C85          STX    D8CA8+1
               LDA    D801E
               LSR
               STA    D8021
               LDX    D801B
               JMP    L8C98
L8C95          STA    D8021
L8C98          LDA    D8019
               STA    $E0
               LDA    D801B
               STA    $E1
               JSR    SUB8B18
               LDA    D801B
D8CA8          CMP    #$00
               BEQ    L8CC3
D8CAC          INC    D801B
               LDA    D8021
               SEC
               SBC    D801C
               BCS    L8C95
               ADC    D801E
               STA    D8021
               INC    D8019
               BNE    L8C98
L8CC3          RTS
SUB8CC4        LDA    D8026
               STA    D8025
               STA    $EE
               LDA    #$00
               STA    $EF
               JSR    SUB8D82
L8CD3          LDA    $EF
               CMP    $EE
               BCC    L8CDA
               RTS
L8CDA          LDA    $EF
               ASL
               ADC    #$01
               STA    D8024
               INC    $EF
               LDA    D8024
               EOR    #$FF
               CLC
               ADC    #$01
               ADC    D8025
               STA    D8025
               BPL    L8D0F
               LDA    $EE
               ASL
               EOR    #$FF
               CLC
               ADC    #$02
               STA    D8023
               DEC    $EE
               LDA    D8023
               EOR    #$FF
               CLC
               ADC    #$01
               ADC    D8025
               STA    D8025
L8D0F          LDA    $EE
               EOR    #$FF
               CLC
               ADC    #$01
               STA    $EA
               LDA    $EF
               EOR    #$FF
               CLC
               ADC    #$01
               STA    $EB
               CLC
               LDA    $EC
               ADC    $EE
               STA    $E0
               CLC
               LDA    $ED
               ADC    $EF
               STA    $E1
               JSR    SUB8B06
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB8B06
               CLC
               LDA    $ED
               ADC    $EB
               STA    $E1
               JSR    SUB8B06
               CLC
               LDA    $EC
               ADC    $EE
               STA    $E0
               JSR    SUB8B06
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB8B06
               CLC
               LDA    $EC
               ADC    $EB
               STA    $E0
               JSR    SUB8B06
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB8B06
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               JSR    SUB8B06
               JMP    L8CD3
SUB8D82        LDA    $EE
               EOR    #$FF
               CLC
               ADC    #$01
               STA    $EA
               LDA    $EF
               EOR    #$FF
               CLC
               ADC    #$01
               STA    $EB
               CLC
               LDA    $EC
               ADC    $EE
               STA    $E0
               LDA    $ED
               STA    $E1
               JSR    SUB8B06
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB8B06
               LDA    $EC
               STA    $E0
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB8B06
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB8B06
               RTS
SUB8DC5        LDA    D8026
               STA    D8025
               STA    $EE
               LDA    #$00
               STA    $EF
               JSR    SUB8E9B
L8DD4          LDA    $EF
               CMP    $EE
               BCC    L8DDB
               RTS
L8DDB          LDA    $EF
               ASL
               ADC    #$01
               STA    D8024
               INC    $EF
               LDA    D8024
               EOR    #$FF
               CLC
               ADC    #$01
               ADC    D8025
               STA    D8025
               BPL    L8E10
               LDA    $EE
               ASL
               EOR    #$FF
               CLC
               ADC    #$02
               STA    D8023
               DEC    $EE
               LDA    D8023
               EOR    #$FF
               CLC
               ADC    #$01
               ADC    D8025
               STA    D8025
L8E10          LDA    $EE
               EOR    #$FF
               CLC
               ADC    #$01
               STA    $EA
               LDA    $EF
               EOR    #$FF
               CLC
               ADC    #$01
               STA    $EB
               CLC
               LDA    $EC
               ADC    $EE
               STA    $E0
               STA    $E7
               CLC
               LDA    $ED
               ADC    $EF
               STA    $E1
               JSR    SUB8B06
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB8B06
               JSR    SUB8877
               LDA    $E0
               STA    $E7
               CLC
               LDA    $ED
               ADC    $EB
               STA    $E1
               JSR    SUB8B06
               CLC
               LDA    $EC
               ADC    $EE
               STA    $E0
               JSR    SUB8B06
               JSR    SUB8877
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               STA    $E7
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB8B06
               CLC
               LDA    $EC
               ADC    $EB
               STA    $E0
               JSR    SUB8B06
               JSR    SUB8877
               LDA    $E0
               STA    $E7
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB8B06
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               JSR    SUB8B06
               JSR    SUB8877
               JMP    L8DD4
SUB8E9B        LDA    $EE
               EOR    #$FF
               CLC
               ADC    #$01
               STA    $EA
               LDA    $EF
               EOR    #$FF
               CLC
               ADC    #$01
               STA    $EB
               CLC
               LDA    $EC
               ADC    $EE
               STA    $E0
               STA    $E7
               LDA    $ED
               STA    $E1
               JSR    SUB8B06
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB8B06
               JSR    SUB8877
               LDA    $EC
               STA    $E0
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB8B06
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB8B06
               RTS
SUB8EE3        LDA    $E1
               LDX    $E8
               CMP    $E8
               BCC    L8EF2
               STA    $E8
               STX    $E1
               JMP    L8EF2
L8EF2          INC    $E8
               LDA    $E1
L8EF6          STA    $E1
               JSR    SUB88BB
               INC    $E1
               LDA    $E1
               CMP    $E8
               BCC    L8EF6
               RTS
SUB8F04        STA    RAMWRTON
               LDX    #$00
L8F09          LDA    #$00
               STA    $FE
               TXA
               CLC
               ADC    #$10
               STA    $FF
               LDA    #$00
               LDY    #$00
L8F17          STA    ($FE),Y
               INY
               CPY    #$50
               BCC    L8F17
               INX
               CPX    #$30
               BCC    L8F09
               STA    RAMWRTOFF
               LDA    #$00
               STA    $FE
               LDA    #$40
               STA    $FF
               LDA    D802A
               STA    $E0
               LDA    D802B
               STA    $E1
               JSR    SUB8AAB
               LDA    $E9
               STA    D8028
               LDY    #$00
               LDA    D802A
               STA    RAMWRTON
               STA    ($FE),Y
               INY
               LDA    D802B
               STA    ($FE),Y
               STA    RAMWRTOFF
               CLC
               LDA    $FE
               ADC    #$02
               STA    $FE
               LDA    $FF
               ADC    #$00
               STA    $FF
               LDA    $FE
               BNE    L8F6B
               LDA    $FF
               CMP    #$40
               BNE    L8F6B
               RTS
L8F6B          SEC
               LDA    $FE
               SBC    #$02
               STA    $FE
               LDA    $FF
               SBC    #$00
               STA    $FF
               LDY    #$00
               STA    RAMRDON
               LDA    ($FE),Y
               STA    RAMRDOFF
               STA    $08
               STA    $E0
               STA    $EA
               INY
               STA    RAMRDON
               LDA    ($FE),Y
               STA    RAMRDOFF
               STA    $09
               STA    $E1
               CLC
               ADC    #$10
               STA    $EB
               STA    RAMRDON
               HEX    B2EA8D02C0D0BC20188BA9028D05C092
               HEX    EA8D04C0A509CD2E80B03518690185E1
               HEX    A50885E020AB8AA5E9CD2880D022C5E3
               HEX    F01EA000A5088D05C091FEC8A5E191FE
               HEX    8D04C018A5FE690285FEA5FF690085FF
               HEX    A509F0333A85E1A50885E020AB8AA5E9
               HEX    CD2880D022C5E3F01EA000A5088D05C0
               HEX    91FEC8A5E191FE8D04C018A5FE690285
               HEX    FEA5FF690085FFA508C94FB035186901
               HEX    85E0A50985E120AB8AA5E9CD2880D022
               HEX    C5E3F01EA000A5E08D05C091FEC8A509
               HEX    91FE8D04C018A5FE690285FEA5FF6900
               HEX    85FFA508F0333A85E0A50985E120AB8A
               HEX    A5E9CD2880D022C5E3F01EA000A5E08D
               HEX    05C091FEC8A50991FE8D04C018A5FE69
               HEX    0285FEA5FF690085FF4C608F
SUB9099        LDX    #$28
L909B          DEX
               STA    $0400,X
               STA    $0480,X
               STA    $0500,X
               STA    $0580,X
               STA    $0600,X
               STA    $0680,X
               STA    $0700,X
               STA    $0780,X
               STA    $0428,X
               STA    $04A8,X
               STA    $0528,X
               STA    $05A8,X
               STA    $0628,X
               STA    $06A8,X
               STA    $0728,X
               STA    $07A8,X
               STA    $0450,X
               STA    $04D0,X
               STA    $0550,X
               STA    $05D0,X
               BNE    L909B
               TAX
               LDA    D9200,X
               LDX    #$28
L90E0          DEX
               STA    RAMWRTON
               STA    $0400,X
               STA    $0480,X
               STA    $0500,X
               STA    $0580,X
               STA    $0600,X
               STA    $0680,X
               STA    $0700,X
               STA    $0780,X
               STA    $0428,X
               STA    $04A8,X
               STA    $0528,X
               STA    $05A8,X
               STA    $0628,X
               STA    $06A8,X
               STA    $0728,X
               STA    $07A8,X
               STA    $0450,X
               STA    $04D0,X
               STA    $0550,X
               STA    $05D0,X
               STA    RAMWRTOFF
               BNE    L90E0
               RTS
SUB9126        LDX    #$28
L9128          DEX
               STA    $0800,X
               STA    $0880,X
               STA    $0900,X
               STA    $0980,X
               STA    $0A00,X
               STA    $0A80,X
               STA    $0B00,X
               STA    $0B80,X
               STA    $0828,X
               STA    $08A8,X
               STA    $0928,X
               STA    $09A8,X
               STA    $0A28,X
               STA    $0AA8,X
               STA    $0B28,X
               STA    $0BA8,X
               STA    $0850,X
               STA    $08D0,X
               STA    $0950,X
               STA    $09D0,X
               BNE    L9128
               TAX
               LDA    D9200,X
               LDX    #$28
L916D          DEX
               STA    RAMWRTON
               STA    $0800,X
               STA    $0880,X
               STA    $0900,X
               STA    $0980,X
               STA    $0A00,X
               STA    $0A80,X
               STA    $0B00,X
               STA    $0B80,X
               STA    $0828,X
               STA    $08A8,X
               STA    $0928,X
               STA    $09A8,X
               STA    $0A28,X
               STA    $0AA8,X
               STA    $0B28,X
               STA    $0BA8,X
               STA    $0850,X
               STA    $08D0,X
               STA    $0950,X
               STA    $09D0,X
               STA    RAMWRTOFF
               BNE    L916D
               RTS
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000
D9200          HEX    00080109020A030B040C050D060E070F
               HEX    80888189828A838B848C858D868E878F
               HEX    10181119121A131B141C151D161E171F
               HEX    90989199929A939B949C959D969E979F
               HEX    20282129222A232B242C252D262E272F
               HEX    A0A8A1A9A2AAA3ABA4ACA5ADA6AEA7AF
               HEX    30383139323A333B343C353D363E373F
               HEX    B0B8B1B9B2BAB3BBB4BCB5BDB6BEB7BF
               ASC    '@HAIBJCKDLEMFNGO'
               ASC    "@HAIBJCKDLEMFNGO"
               HEX    50585159525A535B545C555D565E575F
               HEX    D0D8D1D9D2DAD3DBD4DCD5DDD6DED7DF
               ASC    '`haibjckdlemfngo'
               ASC    "`haibjckdlemfngo"
               HEX    70787179727A737B747C757D767E777F
               HEX    F0F8F1F9F2FAF3FBF4FCF5FDF6FEF7FF
D9300          HEX    00020406080A0C0E01030507090B0D0F
               HEX    20222426282A2C2E21232527292B2D2F
               ASC    '@BDFHJLNACEGIKMO`bdfhjlnacegikmo'
               HEX    80828486888A8C8E81838587898B8D8F
               HEX    A0A2A4A6A8AAACAEA1A3A5A7A9ABADAF
               ASC    "@BDFHJLNACEGIKMO`bdfhjlnacegikmo"
               HEX    10121416181A1C1E11131517191B1D1F
               HEX    30323436383A3C3E31333537393B3D3F
               HEX    50525456585A5C5E51535557595B5D5F
               HEX    70727476787A7C7E71737577797B7D7F
               HEX    90929496989A9C9E91939597999B9D9F
               HEX    B0B2B4B6B8BABCBEB1B3B5B7B9BBBDBF
               HEX    D0D2D4D6D8DADCDED1D3D5D7D9DBDDDF
               HEX    F0F2F4F6F8FAFCFEF1F3F5F7F9FBFDFF
D9400          HEX    04040505060607070404050506060707
               HEX    04040505060607070404050506060707
SUB9420        LDX    #$28
L9422          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L9422
               LDX    #$28
L9433          DEX
               STA    RAMWRTON
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    RAMWRTOFF
               BNE    L9433
               RTS
SUB9449        LDX    #$28
L944B          DEX
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               BNE    L944B
               LDX    #$28
L945C          DEX
               STA    RAMWRTON
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               STA    RAMWRTOFF
               BNE    L945C
               RTS
SUB9472        LDX    #$28
L9474          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L9474
               TAX
               LDA    D9200,X
               LDX    #$28
L9489          DEX
               STA    RAMWRTON
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    RAMWRTOFF
               BNE    L9489
               RTS
SUB949F        LDX    #$28
L94A1          DEX
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               BNE    L94A1
               TAX
               LDA    D9200,X
               LDX    #$28
L94B6          DEX
               STA    RAMWRTON
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               STA    RAMWRTOFF
               BNE    L94B6
               RTS
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000080809090A0A0B0B08080909
               HEX    0A0A0B0B080809090A0A0B0B08080909
               HEX    0A0A0B0B
D9520          HEX    00102030405060708090A0B0C0D0E0F0
D9530          HEX    00112233445566778899AABBCCDDEEFF
D9540          HEX    008000800080008028A828A828A828A8
               HEX    50D050D050D050D078F878F878F878F8
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0C0C0D0D0E0E0F0F0C0C0D0D0E0E0F0F
               HEX    0C0C0D0D0E0E0F0F0C0C0D0D0E0E0F0F

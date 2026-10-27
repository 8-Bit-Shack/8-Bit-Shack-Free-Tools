************************************************************
* dolores - DLCOREAMP (disassembly)
*
* Disassembled from the original binary (4704 bytes, $6000-$725F).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../../README.txt for attribution and terms.
* Load address: $6000. Entry point(s): $6000, $606A (65C02 code allowed: XC).
************************************************************

               XC
               ORG    $6000

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

START          JSR    SUB682E
               LDA    #$4C
               STA    $03F5
               LDA    #$6A
               STA    $03F6
               LDA    #$60
               STA    $03F7
               RTS
SUB6013        LDA    STROBE
               JSR    $C300
               LDA    TXTCLR
               STA    SET80VID
               LDA    AN3OFF
               STA    MIXCLR
               STA    KEYBD
               LDA    LOWSCR
               LDA    #$00
               JSR    SUB6D1E
               JSR    SUB7120
               JSR    SUB6DAB
               JSR    SUB7149
               LDA    #$01
               STA    $030B
               LDA    #$2F
               STA    $0329
               LDA    #$F0
               STA    $36
               LDA    #$FD
               STA    $37
               JSR    $03EA
               RTS
SUB604F        LDA    STROBE
               STA    KEYBD
               STA    CLR80VID
               LDA    AN3ON
               LDA    TXTSET
               LDA    LOWSCR
               JSR    $F399
               JSR    HOME
               JMP    $03D0
D606A          STA    KEYBD
               CMP    #$88
               BEQ    L60D3
               CMP    #$89
               BEQ    L60D9
               CMP    #$8D
               BNE    L607C
               JMP    L6120
L607C          CMP    #$8F
               BNE    L6083
               JMP    L615B
L6083          CMP    #$D7
               BNE    L608A
               JMP    L61A7
L608A          CMP    #$A0
               BNE    L6091
               JMP    L61E9
L6091          CMP    #$8E
               BNE    L6098
               JMP    L61FB
L6098          CMP    #$46
               BNE    L609F
               JMP    L6247
L609F          CMP    #$53
               BNE    L60A6
               JMP    L60F6
L60A6          CMP    #$44
               BNE    L60AD
               JMP    L610B
L60AD          CMP    #$4C
               BNE    L60B4
               JMP    L628C
L60B4          CMP    #$43
               BNE    L60BB
               JMP    L62FB
L60BB          CMP    #$52
               BNE    L60C2
               JMP    L63DE
L60C2          CMP    #$48
               BNE    L60C9
               JMP    L6286
L60C9          CMP    #$4D
               BNE    L60D0
               JMP    L60DF
L60D0          JMP    $DEC9
L60D3          JSR    SUB6013
               JMP    L64A6
L60D9          JSR    SUB604F
               JMP    L64A6
L60DF          LDA    MIXSET
               LDA    #$A0
               JSR    SUB7120
               JSR    SUB7149
               LDA    #$50
               STA    $21
               LDA    #$27
               STA    $0329
               JMP    L64A6
L60F6          JSR:   $B1
               JSR    $E6F8
               STX    $E9
               CPX    #$03
               BCC    L6105
               JMP    L64A9
L6105          JSR    SUB64DE
               JMP    L64A6
L610B          JSR:   $B1
               JSR    $E6F8
               STX    $E9
               CPX    #$03
               BCC    L611A
               JMP    L64A9
L611A          JSR    SUB64AC
               JMP    L64A6
L6120          JSR:   $B1
               JSR    $E6F8
               STX    $E0
               JSR    $DEBE
               JSR    $E6F8
               STX    $E1
               CMP    #$2C
               BNE    L6143
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L6143
               JMP    L64A9
L6143          LDA    $E0
               CMP    #$50
               BCC    L614C
               JMP    L64A9
L614C          LDA    $E1
               CMP    #$30
               BCC    L6155
               JMP    L64A9
L6155          JSR    SUB67B3
               JMP    L64A6
L615B          JSR:   $B1
               JSR    $E6F8
               STX    $E1
               JSR    $DEBE
               JSR    $E6F8
               STX    $E8
               JSR    $DEBE
               JSR    $E6F8
               STX    $E0
               CMP    #$2C
               BNE    L6186
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L6186
               JMP    L64A9
L6186          LDA    $E0
               CMP    #$50
               BCC    L618F
               JMP    L64A9
L618F          LDA    $E1
               CMP    #$30
               BCC    L6198
               JMP    L64A9
L6198          LDA    $E8
               CMP    #$30
               BCC    L61A1
               JMP    L64A9
L61A1          JSR    SUB660C
               JMP    L64A6
L61A7          JSR:   $B1
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
               BCC    L61CF
               JMP    L64A9
L61CF          LDA    $E1
               CMP    #$30
               BCC    L61D8
               JMP    L64A9
L61D8          JSR    SUB6747
               LDY    #$00
               LDA    #$00
               STA    ($83),Y
               LDA    $E9
               INY
               STA    ($83),Y
               JMP    L64A6
L61E9          JSR:   $B1
               JSR    $E6F8
               CPX    #$10
               BCC    L61F6
               JMP    L64A9
L61F6          STX    $E3
               JMP    L64A6
L61FB          JSR:   $B1
               JSR    $E6F8
               STX    $E0
               JSR    $DEBE
               JSR    $E6F8
               STX    $E7
               JSR    $DEBE
               JSR    $E6F8
               STX    $E1
               CMP    #$2C
               BNE    L6226
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L6226
               JMP    L64A9
L6226          LDA    $E0
               CMP    #$50
               BCC    L622F
               JMP    L64A9
L622F          LDA    $E1
               CMP    #$30
               BCC    L6238
               JMP    L64A9
L6238          LDA    $E7
               CMP    #$50
               BCC    L6241
               JMP    L64A9
L6241          JSR    SUB6565
               JMP    L64A6
L6247          JSR:   $B1
               JSR    $E6F8
               STX    $0327
               JSR    $DEBE
               JSR    $E6F8
               STX    $0328
               CMP    #$2C
               BNE    L626C
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L626C
               JMP    L64A9
L626C          LDA    $0327
               CMP    #$50
               BCC    L6276
               JMP    L64A9
L6276          LDA    $0328
               CMP    #$30
               BCC    L6280
               JMP    L64A9
L6280          JSR    SUB6B91
               JMP    L64A6
L6286          JSR    SUB64FA
               JMP    L64A6
L628C          JSR:   $B1
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
               BNE    L62BF
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L62BF
               JMP    L64A9
L62BF          LDA    $E0
               CMP    #$50
               BCC    L62C8
               JMP    L64A9
L62C8          LDA    $E1
               CMP    #$30
               BCC    L62D1
               JMP    L64A9
L62D1          LDA    $E8
               CMP    #$30
               BCC    L62DA
               JMP    L64A9
L62DA          LDA    $E7
               CMP    #$50
               BCC    L62E3
               JMP    L64A9
L62E3          LDA    $E0
               CMP    $E7
               BNE    L62F5
               LDA    $E1
               CMP    $E8
               BNE    L62F5
               JSR    SUB67B3
               JMP    L64A6
L62F5          JSR    SUB6851
               JMP    L64A6
L62FB          STZ    $0324
               STZ    $0326
               JSR:   $B1
               JSR    $E6F8
               STX    $EC
               JSR    $DEBE
               JSR    $E6F8
               STX    $ED
               JSR    $DEBE
               JSR    $E6F8
               STX    $031D
               CMP    #$2C
               BNE    L6330
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L632D
               JMP    L64A9
L632D          INC    $0324
L6330          CMP    #$2C
               BNE    L6347
               JSR    $DEBE
               JSR    $E6F8
               STX    $0325
               CPX    #$10
               BCC    L6344
               JMP    L64A9
L6344          INC    $0324
L6347          LDA    $EC
               CMP    #$50
               BCC    L6350
               JMP    L64A9
L6350          LDA    $ED
               CMP    #$30
               BCC    L6359
               JMP    L64A9
L6359          LDA    $031D
               CMP    #$50
               BCC    L6363
               JMP    L64A9
L6363          LDA    $031D
               CMP    $EC
               BCC    L636C
               BRA    L63A8
L636C          CMP    $ED
               BCC    L6372
               BRA    L63A8
L6372          CLC
               ADC    $EC
               CMP    #$50
               BCC    L637B
               BRA    L63A8
L637B          CLC
               LDA    $031D
               ADC    $ED
               CMP    $0329
               BEQ    L638A
               BCC    L638A
               BRA    L63A8
L638A          LDA    #$4C
               STA    SUB6527
               STA    SUB67A1
               LDA    #$65
               STA    SUB6527+1
               LDA    #$65
               STA    D6529
               LDA    #$B3
               STA    SUB67A1+1
               LDA    #$67
               STA    D67A3
               BRA    L63C0
L63A8          LDA    #$A5
               STA    SUB6527
               STA    SUB67A1
               LDA    #$E0
               STA    SUB6527+1
               STA    SUB67A1+1
               LDA    #$EA
               STA    D6529
               STA    D67A3
L63C0          LDA    $0324
               BEQ    L63D8
               JSR    SUB6A55
               LDA    $0325
               STA    $E3
               DEC    $0324
               LDA    $0324
               BNE    L63D8
               JMP    L64A6
L63D8          JSR    SUB6956
               JMP    L64A6
L63DE          STZ    $0324
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
               BNE    L641B
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L6418
               JMP    L64A9
L6418          INC    $0324
L641B          CMP    #$2C
               BNE    L6432
               JSR    $DEBE
               JSR    $E6F8
               STX    $0325
               CPX    #$10
               BCC    L642F
               JMP    L64A9
L642F          INC    $0324
L6432          LDA    $E0
               CMP    #$50
               BCC    L643B
               JMP    L64A9
L643B          LDA    $E1
               CMP    #$30
               BCC    L6444
               JMP    L64A9
L6444          LDA    $E7
               CMP    #$50
               BCC    L644D
               JMP    L64A9
L644D          LDA    $E8
               CMP    #$30
               BCC    L6456
               JMP    L64A9
L6456          LDA    $E0
               CMP    $E7
               BNE    L6468
               LDA    $E1
               CMP    $E8
               BNE    L6468
               JSR    SUB67B3
               JMP    L64A6
L6468          LDA    $0324
               BEQ    L6480
               JSR    SUB6B71
               LDA    $0325
               STA    $E3
               DEC    $0324
               LDA    $0324
               BNE    L6480
               JMP    L64A6
L6480          LDA    $09
               STA    $E1
               LDA    $1F
               STA    $E8
               JSR    SUB6565
               JSR    SUB660C
               LDA    $E0
               LDX    $E7
               STA    $E7
               STX    $E0
               JSR    SUB660C
               LDA    $1F
               STA    $E1
               JSR    SUB6565
               JMP    L64A6
               HEX    20DDFB
L64A6          JMP    $D995
L64A9          JMP    $E199
SUB64AC        LDA    $E9
               CMP    #$02
               BEQ    L64BB
               LDA    #$01
               STA    $030B
               LDA    #$71
               BRA    L64C2
L64BB          LDA    #$02
               STA    $030B
               LDA    #$72
L64C2          STA    D6596+2
               STA    D6647+2
               STA    D6684+2
               STA    D66B3+2
               STA    D66EB+2
               STA    D6714+2
               STA    D6739+2
               STA    D6750+2
               STA    D67C0+2
               RTS
SUB64DE        CMP    RDVBL
               BPL    SUB64DE
L64E3          CMP    RDVBL
               BMI    L64E3
               STA    KEYBD
               LDA    $E9
               CMP    #$02
               BEQ    L64F6
               LDA    LOWSCR
               BRA    L64F9
L64F6          LDA    HISCR
L64F9          RTS
SUB64FA        LDX    $E3
               LDA    D7230,X
               TAY
               LDA    $030B
               CMP    #$02
               BEQ    L6517
               TYA
               JSR    SUB6D1E
               LDA    $0329
               CMP    #$27
               BEQ    L6516
               TYA
               JSR    SUB7172
L6516          RTS
L6517          TYA
               JSR    SUB6DAB
               LDA    $0329
               CMP    #$27
               BEQ    L6526
               TYA
               JSR    SUB719F
L6526          RTS
SUB6527        LDA    $E0
D6529          NOP
               CMP    $E7
               BCC    L6538
               BEQ    L6564
               LDX    $E7
               STA    $031F
               STX    $031E
L6538          LDA    $E0
               BPL    L6540
               STZ    $E0
               BRA    L6548
L6540          CMP    #$50
               BCC    L6548
               LDA    #$4F
               STA    $E0
L6548          LDA    $E7
               BPL    L6550
               STZ    $E7
               BRA    L6558
L6550          CMP    #$50
               BCC    L6558
               LDA    #$4F
               STA    $E7
L6558          LDA    $E1
               BPL    L655D
               RTS
L655D          CMP    $0329
               BEQ    SUB6565
               BCC    SUB6565
L6564          RTS
SUB6565        LDA    $E0
               CMP    $E7
               BCC    L657A
               BEQ    L6577
               LDX    $E7
               STA    $031F
               STX    $031E
               BRA    L6582
L6577          JMP    SUB67B3
L657A          STA    $031E
               LDA    $E7
               STA    $031F
L6582          SEC
               SBC    $031E
               INC
               STA    $030C
               INC    $031F
               LDA    $E1
               LSR
               TAX
               LDA    D7240,X
               STA    $06
D6596          LDA    D7100,X
               STA    $07
               LDA    $E1
               BIT    #$01
               BEQ    L65A4
               JMP    L65B8
L65A4          LDA    $E3
               STA    $E4
               TAX
               LDA    D6F00,X
               STA    $E5
               LDA    #$F0
               STA    D65DE+1
               STA    D65FA+1
               BRA    L65CD
L65B8          LDX    $E3
               LDA    D7220,X
               STA    $E4
               TAX
               LDA    D6F00,X
               STA    $E5
               LDA    #$0F
               STA    D65DE+1
               STA    D65FA+1
L65CD          LDA    $031E
               BIT    #$01
               BNE    L65F6
               LSR
               TAY
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
D65DE          AND    #$F0
               ORA    $E5
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               INC    $031E
               LDA    $031E
               CMP    $031F
               BCC    L65CD
               RTS
L65F6          LSR
               TAY
               LDA    ($06),Y
D65FA          AND    #$F0
               ORA    $E4
               STA    ($06),Y
               INC    $031E
               LDA    $031E
               CMP    $031F
               BCC    L65CD
               RTS
SUB660C        LDA    $E1
               CMP    $E8
               BCC    L661F
               BEQ    L661C
               LDX    $E8
               STA    $E8
               STX    $E1
               BRA    L661F
L661C          JMP    SUB67B3
L661F          LDA    $E8
               SEC
               SBC    $E1
               INC
               STA    $030C
               LDA    $E0
               BIT    #$01
               BEQ    L6631
               JMP    L66D5
L6631          LSR
               TAY
               LDA    $E1
               LSR
               STA    $030D
               LDA    $E1
               BIT    #$01
               BEQ    L6675
               LDX    $030D
               LDA    D7240,X
               STA    $06
D6647          LDA    D7100,X
               STA    $07
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               TAX
               LDA    D7000,X
               AND    #$0F
               STA    $E5
               LDX    $E3
               LDA    D7220,X
               ORA    $E5
               TAX
               LDA    D6F00,X
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               INC    $030D
               DEC    $030C
L6675          LDA    $030C
               CMP    #$02
               BCC    L66A5
               LDX    $030D
               LDA    D7240,X
               STA    $06
D6684          LDA    D7100,X
               STA    $07
               LDX    $E3
               LDA    D7230,X
               TAX
               LDA    D6F00,X
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               DEC    $030C
               DEC    $030C
               INC    $030D
               BRA    L6675
L66A5          LDA    $030C
               BNE    L66AB
               RTS
L66AB          LDX    $030D
               LDA    D7240,X
               STA    $06
D66B3          LDA    D7100,X
               STA    $07
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               TAX
               LDA    D7000,X
               AND    #$F0
               ORA    $E3
               TAX
               LDA    D6F00,X
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               RTS
L66D5          LSR
               TAY
               LDA    $E1
               LSR
               STA    $030D
               LDA    $E1
               BIT    #$01
               BEQ    L6705
               LDX    $030D
               LDA    D7240,X
               STA    $06
D66EB          LDA    D7100,X
               STA    $07
               LDA    ($06),Y
               AND    #$0F
               STA    $E5
               LDX    $E3
               LDA    D7220,X
               ORA    $E5
               STA    ($06),Y
               INC    $030D
               DEC    $030C
L6705          LDA    $030C
               CMP    #$02
               BCC    L672B
               LDX    $030D
               LDA    D7240,X
               STA    $06
D6714          LDA    D7100,X
               STA    $07
               LDX    $E3
               LDA    D7230,X
               STA    ($06),Y
               DEC    $030C
               DEC    $030C
               INC    $030D
               BRA    L6705
L672B          LDA    $030C
               BNE    L6731
               RTS
L6731          LDX    $030D
               LDA    D7240,X
               STA    $06
D6739          LDA    D7100,X
               STA    $07
               LDA    ($06),Y
               AND    #$F0
               ORA    $E3
               STA    ($06),Y
               RTS
SUB6747        LDA    $E1
               LSR
               TAX
               LDA    D7240,X
               STA    $06
D6750          LDA    D7100,X
               STA    $07
               LDA    $E0
               BIT    #$01
               BNE    L6783
               LSR
               TAY
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               TAX
               LDA    D7000,X
               STA    $E9
               LDA    $E1
               AND    #$01
               BEQ    L677C
               LDA    $E9
               AND    #$F0
               LSR
               LSR
               LSR
               LSR
               STA    $E9
               RTS
L677C          LDA    $E9
               AND    #$0F
               STA    $E9
               RTS
L6783          LSR
               TAY
               LDA    ($06),Y
               STA    $E9
               LDA    $E1
               AND    #$01
               BEQ    L679A
               LDA    $E9
               AND    #$F0
               LSR
               LSR
               LSR
               LSR
               STA    $E9
               RTS
L679A          LDA    $E9
               AND    #$0F
               STA    $E9
               RTS
SUB67A1        LDA    $E0
D67A3          NOP
               CMP    #$50
               BCC    L67A9
               RTS
L67A9          LDA    $E1
               CMP    $0329
               BEQ    SUB67B3
               BCC    SUB67B3
               RTS
SUB67B3        LDA    $E3
               STA    $E4
               LDA    $E1
               LSR
               TAX
               LDA    D7240,X
               STA    $06
D67C0          LDA    D7100,X
               STA    $07
               LDX    $E3
               LDA    $E0
               BIT    #$01
               BNE    L6808
               LSR
               TAY
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               STA    $E5
               LDA    D6F00,X
               STA    $E4
               LDA    $E1
               AND    #$01
               BEQ    L67F5
               LDA    $E5
               AND    #$0F
               STA    $E5
               LDA    D7220,X
               TAX
               LDA    D6F00,X
               STA    $E4
               BRA    L67FB
L67F5          LDA    $E5
               AND    #$F0
               STA    $E5
L67FB          LDA    $E4
               ORA    $E5
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               RTS
L6808          LSR
               TAY
               LDA    ($06),Y
               STA    $E5
               LDA    $E1
               AND    #$01
               BEQ    L6821
               LDA    $E5
               AND    #$0F
               STA    $E5
               LDA    D7220,X
               STA    $E4
               BRA    L6827
L6821          LDA    $E5
               AND    #$F0
               STA    $E5
L6827          LDA    $E4
               ORA    $E5
               STA    ($06),Y
               RTS
SUB682E        LDA    #$00
               STA    $030F
               STA    $030E
               STA    $3C
               LDA    #$60
               STA    $3D
               LDA    #$FF
               STA    $3E
               LDA    #$7F
               STA    $3F
               LDA    #$00
               STA    $42
               LDA    #$60
               STA    $43
               SEC
               JMP    $C311
               HEX    60
SUB6851        LDA    $E0
               CMP    $E7
               BCC    L6867
               LDX    $E7
               STA    $E7
               STX    $E0
               LDA    $E1
               LDX    $E8
               STA    $E8
               STX    $E1
               BRA    L687B
L6867          LDA    $E1
               CMP    $E8
               BCC    L687B
               LDX    $E8
               STA    $E8
               STX    $E1
               LDX    $E7
               LDA    $E0
               STA    $E7
               STX    $E0
L687B          LDA    $E0
               SEC
               SBC    $E7
               BEQ    L689A
               BCS    L68A2
               EOR    #$FF
               INC
               STA    $0313
               LDA    $E0
               STA    $0310
               LDA    $E1
               STA    $0312
               SEC
               SBC    $E8
               JMP    L68B2
L689A          JSR    SUB660C
               RTS
L689E          JSR    SUB6565
               RTS
L68A2          STA    $0313
               LDA    $E7
               STA    $0310
               LDA    $E8
               STA    $0312
               SEC
               SBC    $E1
L68B2          BCS    L68BF
               EOR    #$FF
               ADC    #$01
               STA    $0315
               LDA    #$EE
               BNE    L68C6
L68BF          BEQ    L689E
               STA    $0315
               LDA    #$CE
L68C6          STA    D6909
               STA    D693E
               LDA    $0313
               CMP    $0315
               BCS    L68D7
               JMP    L690E
L68D7          INC
               STA    $E6
               DEC
               LSR
               STA    $0318
               JMP    L68EA
L68E2          RTS
L68E3          STA    $0318
L68E6          DEC    $E6
               BEQ    L68E2
L68EA          LDA    $0310
               STA    $E0
               LDA    $0312
               STA    $E1
               JSR    SUB67B3
               INC    $0310
               LDA    $0318
               SEC
               SBC    $0315
               BCS    L68E3
               ADC    $0313
               STA    $0318
D6909          INC    $0312
               BRA    L68E6
L690E          LDX    $E1
               CPX    $0312
               BNE    L6917
               LDX    $E8
L6917          STX    D693A+1
               LDA    $0315
               LSR
               STA    $0318
               LDX    $0312
               JMP    L692A
L6927          STA    $0318
L692A          LDA    $0310
               STA    $E0
               LDA    $0312
               STA    $E1
               JSR    SUB67B3
               LDA    $0312
D693A          CMP    #$00
               BEQ    L6955
D693E          INC    $0312
               LDA    $0318
               SEC
               SBC    $0313
               BCS    L6927
               ADC    $0315
               STA    $0318
               INC    $0310
               BNE    L692A
L6955          RTS
SUB6956        LDA    $031D
               STA    $031C
               STA    $EE
               STZ    $EF
               JSR    SUB6A12
L6963          LDA    $EF
               CMP    $EE
               BCC    L696A
               RTS
L696A          LDA    $EF
               ASL
               ADC    #$01
               STA    $031B
               INC    $EF
               LDA    $031B
               EOR    #$FF
               CLC
               ADC    #$01
               ADC    $031C
               STA    $031C
               BPL    L699F
               LDA    $EE
               ASL
               EOR    #$FF
               CLC
               ADC    #$02
               STA    $031A
               DEC    $EE
               LDA    $031A
               EOR    #$FF
               CLC
               ADC    #$01
               ADC    $031C
               STA    $031C
L699F          LDA    $EE
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
               JSR    SUB67A1
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB67A1
               CLC
               LDA    $ED
               ADC    $EB
               STA    $E1
               JSR    SUB67A1
               CLC
               LDA    $EC
               ADC    $EE
               STA    $E0
               JSR    SUB67A1
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB67A1
               CLC
               LDA    $EC
               ADC    $EB
               STA    $E0
               JSR    SUB67A1
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB67A1
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               JSR    SUB67A1
               JMP    L6963
SUB6A12        LDA    $EE
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
               JSR    SUB67A1
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB67A1
               LDA    $EC
               STA    $E0
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB67A1
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB67A1
               RTS
SUB6A55        LDA    $031D
               STA    $031C
               STA    $EE
               STZ    $EF
               JSR    SUB6B29
L6A62          LDA    $EF
               CMP    $EE
               BCC    L6A69
               RTS
L6A69          LDA    $EF
               ASL
               ADC    #$01
               STA    $031B
               INC    $EF
               LDA    $031B
               EOR    #$FF
               CLC
               ADC    #$01
               ADC    $031C
               STA    $031C
               BPL    L6A9E
               LDA    $EE
               ASL
               EOR    #$FF
               CLC
               ADC    #$02
               STA    $031A
               DEC    $EE
               LDA    $031A
               EOR    #$FF
               CLC
               ADC    #$01
               ADC    $031C
               STA    $031C
L6A9E          LDA    $EE
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
               JSR    SUB67A1
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB67A1
               JSR    SUB6527
               LDA    $E0
               STA    $E7
               CLC
               LDA    $ED
               ADC    $EB
               STA    $E1
               JSR    SUB67A1
               CLC
               LDA    $EC
               ADC    $EE
               STA    $E0
               JSR    SUB67A1
               JSR    SUB6527
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               STA    $E7
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB67A1
               CLC
               LDA    $EC
               ADC    $EB
               STA    $E0
               JSR    SUB67A1
               JSR    SUB6527
               LDA    $E0
               STA    $E7
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB67A1
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               JSR    SUB67A1
               JSR    SUB6527
               JMP    L6A62
SUB6B29        LDA    $EE
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
               JSR    SUB67A1
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB67A1
               JSR    SUB6527
               LDA    $EC
               STA    $E0
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB67A1
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB67A1
               RTS
SUB6B71        LDA    $E1
               LDX    $E8
               CMP    $E8
               BCC    L6B7F
               STA    $E8
               STX    $E1
               BRA    L6B7F
L6B7F          INC    $E8
               LDA    $E1
L6B83          STA    $E1
               JSR    SUB6565
               INC    $E1
               LDA    $E1
               CMP    $E8
               BCC    L6B83
               RTS
SUB6B91        STA    RAMWRTON
               LDX    #$00
L6B96          TXA
               STZ    $FE
               CLC
               ADC    #$0C
               STA    $FF
               LDA    #$00
               LDY    #$00
L6BA2          STA    ($FE),Y
               INY
               CPY    #$50
               BCC    L6BA2
               INX
               CPX    #$30
               BCC    L6B96
               STA    RAMWRTOFF
               STZ    $FE
               LDA    #$40
               STA    $FF
               LDA    $0327
               STA    $E0
               LDA    $0328
               STA    $E1
               JSR    SUB6747
               LDA    $E9
               STA    $0325
               LDY    #$00
               LDA    $0327
               STA    RAMWRTON
               STA    ($FE),Y
               INY
               LDA    $0328
               STA    ($FE),Y
               STA    RAMWRTOFF
               CLC
               LDA    $FE
               ADC    #$02
               STA    $FE
               LDA    $FF
               ADC    #$00
               STA    $FF
L6BE9          LDA    $FE
               BNE    L6BF4
               LDA    $FF
               CMP    #$40
               BNE    L6BF4
               RTS
L6BF4          SEC
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
               ADC    #$0C
               STA    $EB
               STA    RAMRDON
               LDA    ($EA)
               STA    RAMRDOFF
               BNE    L6BE9
               JSR    SUB67B3
               LDA    #$02
               STA    RAMWRTON
               STA    ($EA)
               STA    RAMWRTOFF
               LDA    $09
               CMP    $0329
               BCS    L6C74
               INC
               STA    $E1
               LDA    $08
               STA    $E0
               JSR    SUB6747
               LDA    $E9
               CMP    $0325
               BNE    L6C74
               CMP    $E3
               BEQ    L6C74
               LDY    #$00
               LDA    $08
               STA    RAMWRTON
               STA    ($FE),Y
               INY
               LDA    $E1
               STA    ($FE),Y
               STA    RAMWRTOFF
               CLC
               LDA    $FE
               ADC    #$02
               STA    $FE
               LDA    $FF
               ADC    #$00
               STA    $FF
L6C74          LDA    $09
               BEQ    L6CAB
               DEC
               STA    $E1
               LDA    $08
               STA    $E0
               JSR    SUB6747
               LDA    $E9
               CMP    $0325
               BNE    L6CAB
               CMP    $E3
               BEQ    L6CAB
               LDY    #$00
               LDA    $08
               STA    RAMWRTON
               STA    ($FE),Y
               INY
               LDA    $E1
               STA    ($FE),Y
               STA    RAMWRTOFF
               CLC
               LDA    $FE
               ADC    #$02
               STA    $FE
               LDA    $FF
               ADC    #$00
               STA    $FF
L6CAB          LDA    $08
               CMP    #$4F
               BCS    L6CE4
               INC
               STA    $E0
               LDA    $09
               STA    $E1
               JSR    SUB6747
               LDA    $E9
               CMP    $0325
               BNE    L6CE4
               CMP    $E3
               BEQ    L6CE4
               LDY    #$00
               LDA    $E0
               STA    RAMWRTON
               STA    ($FE),Y
               INY
               LDA    $09
               STA    ($FE),Y
               STA    RAMWRTOFF
               CLC
               LDA    $FE
               ADC    #$02
               STA    $FE
               LDA    $FF
               ADC    #$00
               STA    $FF
L6CE4          LDA    $08
               BEQ    L6D1B
               DEC
               STA    $E0
               LDA    $09
               STA    $E1
               JSR    SUB6747
               LDA    $E9
               CMP    $0325
               BNE    L6D1B
               CMP    $E3
               BEQ    L6D1B
               LDY    #$00
               LDA    $E0
               STA    RAMWRTON
               STA    ($FE),Y
               INY
               LDA    $09
               STA    ($FE),Y
               STA    RAMWRTOFF
               CLC
               LDA    $FE
               ADC    #$02
               STA    $FE
               LDA    $FF
               ADC    #$00
               STA    $FF
L6D1B          JMP    L6BE9
SUB6D1E        LDX    #$28
L6D20          DEX
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
               BNE    L6D20
               TAX
               LDA    D6F00,X
               LDX    #$28
L6D65          DEX
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
               BNE    L6D65
               RTS
SUB6DAB        LDX    #$28
L6DAD          DEX
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
               BNE    L6DAD
               TAX
               LDA    D6F00,X
               LDX    #$28
L6DF2          DEX
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
               BNE    L6DF2
               RTS
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
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0000000000000000
D6F00          HEX    00080109020A030B040C050D060E070F
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
D7000          HEX    00020406080A0C0E01030507090B0D0F
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
D7100          HEX    04040505060607070404050506060707
               HEX    04040505060607070404050506060707
SUB7120        LDX    #$28
L7122          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L7122
               LDX    #$28
L7133          DEX
               STA    RAMWRTON
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    RAMWRTOFF
               BNE    L7133
               RTS
SUB7149        LDX    #$28
L714B          DEX
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               BNE    L714B
               LDX    #$28
L715C          DEX
               STA    RAMWRTON
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               STA    RAMWRTOFF
               BNE    L715C
               RTS
SUB7172        LDX    #$28
L7174          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L7174
               TAX
               LDA    D6F00,X
               LDX    #$28
L7189          DEX
               STA    RAMWRTON
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    RAMWRTOFF
               BNE    L7189
               RTS
SUB719F        LDX    #$28
L71A1          DEX
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               BNE    L71A1
               TAX
               LDA    D6F00,X
               LDX    #$28
L71B6          DEX
               STA    RAMWRTON
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               STA    RAMWRTOFF
               BNE    L71B6
               RTS
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000080809090A0A0B0B08080909
               HEX    0A0A0B0B080809090A0A0B0B08080909
               HEX    0A0A0B0B
D7220          HEX    00102030405060708090A0B0C0D0E0F0
D7230          HEX    00112233445566778899AABBCCDDEEFF
D7240          HEX    008000800080008028A828A828A828A8
               HEX    50D050D050D050D078F878F878F878F8

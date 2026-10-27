************************************************************
* dolores - DLCOREAMP (disassembly)
*
* Disassembled from the original binary (5664 bytes, $8000-$961F).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../../README.txt for attribution and terms.
* Load address: $8000. Entry point(s): $8000, $808B (65C02 code allowed: XC).
************************************************************

               XC
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

START          JSR    SUB8B69
               LDA    #$4C
               STA    $03F5
               LDA    #$8B
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
SUB8031        LDA    STROBE
               JSR    $C300
               LDA    TXTCLR
               STA    SET80VID
               LDA    AN3OFF
               STA    MIXCLR
               STA    KEYBD
               LDA    LOWSCR
               LDA    #$00
               JSR    SUB9059
               JSR    SUB9420
               JSR    SUB90E6
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
SUB806D        LDA    STROBE
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
D808B          STA    KEYBD
               CMP    #$88
               BNE    L8095
               JMP    L8158
L8095          CMP    #$89
               BNE    L809C
               JMP    L815E
L809C          CMP    #$8D
               BNE    L80A3
               JMP    L81C2
L80A3          CMP    #$8F
               BNE    L80AA
               JMP    L81FD
L80AA          CMP    #$D7
               BNE    L80B1
               JMP    L8249
L80B1          CMP    #$A0
               BNE    L80B8
               JMP    L828B
L80B8          CMP    #$8E
               BNE    L80BF
               JMP    L829D
L80BF          CMP    #$46
               BNE    L80C6
               JMP    L82E9
L80C6          CMP    #$53
               BNE    L80CD
               JMP    L8198
L80CD          CMP    #$44
               BNE    L80D4
               JMP    L81AD
L80D4          CMP    #$4C
               BNE    L80DB
               JMP    L832E
L80DB          CMP    #$43
               BNE    L80E2
               JMP    L839D
L80E2          CMP    #$52
               BNE    L80E9
               JMP    L8480
L80E9          CMP    #$48
               BNE    L80F0
               JMP    L8328
L80F0          CMP    #$4D
               BNE    L80F7
               JMP    L8164
L80F7          CMP    #$54
               BNE    L80FE
               JMP    L8127
L80FE          CMP    #$47
               BNE    L8105
               JMP    L813D
L8105          CMP    #$B7
               BNE    L810C
               JMP    L810F
L810C          JMP    $DEC9
L810F          JSR:   $B1
               JSR    $E6F8
               STX    D802F
               JSR    $DEBE
               JSR    $E6F8
               STX    D8030
               JSR    SUB858D
               JMP    L8548
L8127          LDA    #$01
               STA    D802F
               LDA    #$03
               STA    D8030
               JSR    SUB858D
               JSR    SUB86FC
               LDA    TXTSET
               JMP    L8548
L813D          LDA    TXTCLR
               LDA    #$2F
               STA    D802E
               LDA    MIXCLR
               LDA    #$03
               STA    D802F
               LDA    #$01
               STA    D8030
               JSR    SUB858D
               JMP    L8548
L8158          JSR    SUB8031
               JMP    L8548
L815E          JSR    SUB806D
               JMP    L8548
L8164          LDA    D802E
               CMP    #$2F
               BEQ    L8178
               LDA    MIXCLR
               LDA    #$2F
               STA    D802E
               STZ    $22
               JMP    L8548
L8178          LDA    MIXSET
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
               JMP    L8548
L8198          JSR:   $B1
               JSR    $E6F8
               STX    $E9
               CPX    #$03
               BCC    L81A7
               JMP    L854B
L81A7          JSR    SUB87E9
               JMP    L8548
L81AD          JSR:   $B1
               JSR    $E6F8
               STX    $E9
               CPX    #$04
               BCC    L81BC
               JMP    L854B
L81BC          JSR    SUB854E
               JMP    L8548
L81C2          JSR:   $B1
               JSR    $E6F8
               STX    $E0
               JSR    $DEBE
               JSR    $E6F8
               STX    $E1
               CMP    #$2C
               BNE    L81E5
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L81E5
               JMP    L854B
L81E5          LDA    $E0
               CMP    #$50
               BCC    L81EE
               JMP    L854B
L81EE          LDA    $E1
               CMP    #$30
               BCC    L81F7
               JMP    L854B
L81F7          JSR    SUB8AEE
               JMP    L8548
L81FD          JSR:   $B1
               JSR    $E6F8
               STX    $E1
               JSR    $DEBE
               JSR    $E6F8
               STX    $E8
               JSR    $DEBE
               JSR    $E6F8
               STX    $E0
               CMP    #$2C
               BNE    L8228
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L8228
               JMP    L854B
L8228          LDA    $E0
               CMP    #$50
               BCC    L8231
               JMP    L854B
L8231          LDA    $E1
               CMP    #$30
               BCC    L823A
               JMP    L854B
L823A          LDA    $E8
               CMP    #$30
               BCC    L8243
               JMP    L854B
L8243          JSR    SUB8947
               JMP    L8548
L8249          JSR:   $B1
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
               BCC    L8271
               JMP    L854B
L8271          LDA    $E1
               CMP    #$30
               BCC    L827A
               JMP    L854B
L827A          JSR    SUB8A82
               LDY    #$00
               LDA    #$00
               STA    ($83),Y
               LDA    $E9
               INY
               STA    ($83),Y
               JMP    L8548
L828B          JSR:   $B1
               JSR    $E6F8
               CPX    #$10
               BCC    L8298
               JMP    L854B
L8298          STX    $E3
               JMP    L8548
L829D          JSR:   $B1
               JSR    $E6F8
               STX    $E0
               JSR    $DEBE
               JSR    $E6F8
               STX    $E7
               JSR    $DEBE
               JSR    $E6F8
               STX    $E1
               CMP    #$2C
               BNE    L82C8
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L82C8
               JMP    L854B
L82C8          LDA    $E0
               CMP    #$50
               BCC    L82D1
               JMP    L854B
L82D1          LDA    $E1
               CMP    #$30
               BCC    L82DA
               JMP    L854B
L82DA          LDA    $E7
               CMP    #$50
               BCC    L82E3
               JMP    L854B
L82E3          JSR    SUB88A0
               JMP    L8548
L82E9          JSR:   $B1
               JSR    $E6F8
               STX    D802A
               JSR    $DEBE
               JSR    $E6F8
               STX    D802B
               CMP    #$2C
               BNE    L830E
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L830E
               JMP    L854B
L830E          LDA    D802A
               CMP    #$50
               BCC    L8318
               JMP    L854B
L8318          LDA    D802B
               CMP    #$30
               BCC    L8322
               JMP    L854B
L8322          JSR    SUB8ECC
               JMP    L8548
L8328          JSR    SUB8805
               JMP    L8548
L832E          JSR:   $B1
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
               BNE    L8361
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L8361
               JMP    L854B
L8361          LDA    $E0
               CMP    #$50
               BCC    L836A
               JMP    L854B
L836A          LDA    $E1
               CMP    #$30
               BCC    L8373
               JMP    L854B
L8373          LDA    $E8
               CMP    #$30
               BCC    L837C
               JMP    L854B
L837C          LDA    $E7
               CMP    #$50
               BCC    L8385
               JMP    L854B
L8385          LDA    $E0
               CMP    $E7
               BNE    L8397
               LDA    $E1
               CMP    $E8
               BNE    L8397
               JSR    SUB8AEE
               JMP    L8548
L8397          JSR    SUB8B8C
               JMP    L8548
L839D          STZ    D8027
               STZ    D8029
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
               BNE    L83D2
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L83CF
               JMP    L854B
L83CF          INC    D8027
L83D2          CMP    #$2C
               BNE    L83E9
               JSR    $DEBE
               JSR    $E6F8
               STX    D8028
               CPX    #$10
               BCC    L83E6
               JMP    L854B
L83E6          INC    D8027
L83E9          LDA    $EC
               CMP    #$50
               BCC    L83F2
               JMP    L854B
L83F2          LDA    $ED
               CMP    #$30
               BCC    L83FB
               JMP    L854B
L83FB          LDA    D8026
               CMP    #$50
               BCC    L8405
               JMP    L854B
L8405          LDA    D8026
               CMP    $EC
               BCC    L840E
               BRA    L844A
L840E          CMP    $ED
               BCC    L8414
               BRA    L844A
L8414          CLC
               ADC    $EC
               CMP    #$50
               BCC    L841D
               BRA    L844A
L841D          CLC
               LDA    D8026
               ADC    $ED
               CMP    D802E
               BEQ    L842C
               BCC    L842C
               BRA    L844A
L842C          LDA    #$4C
               STA    SUB8862
               STA    SUB8ADC
               LDA    #$A0
               STA    SUB8862+1
               LDA    #$88
               STA    D8864
               LDA    #$EE
               STA    SUB8ADC+1
               LDA    #$8A
               STA    D8ADE
               BRA    L8462
L844A          LDA    #$A5
               STA    SUB8862
               STA    SUB8ADC
               LDA    #$E0
               STA    SUB8862+1
               STA    SUB8ADC+1
               LDA    #$EA
               STA    D8864
               STA    D8ADE
L8462          LDA    D8027
               BEQ    L847A
               JSR    SUB8D90
               LDA    D8028
               STA    $E3
               DEC    D8027
               LDA    D8027
               BNE    L847A
               JMP    L8548
L847A          JSR    SUB8C91
               JMP    L8548
L8480          STZ    D8027
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
               BNE    L84BD
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L84BA
               JMP    L854B
L84BA          INC    D8027
L84BD          CMP    #$2C
               BNE    L84D4
               JSR    $DEBE
               JSR    $E6F8
               STX    D8028
               CPX    #$10
               BCC    L84D1
               JMP    L854B
L84D1          INC    D8027
L84D4          LDA    $E0
               CMP    #$50
               BCC    L84DD
               JMP    L854B
L84DD          LDA    $E1
               CMP    #$30
               BCC    L84E6
               JMP    L854B
L84E6          LDA    $E7
               CMP    #$50
               BCC    L84EF
               JMP    L854B
L84EF          LDA    $E8
               CMP    #$30
               BCC    L84F8
               JMP    L854B
L84F8          LDA    $E0
               CMP    $E7
               BNE    L850A
               LDA    $E1
               CMP    $E8
               BNE    L850A
               JSR    SUB8AEE
               JMP    L8548
L850A          LDA    D8027
               BEQ    L8522
               JSR    SUB8EAC
               LDA    D8028
               STA    $E3
               DEC    D8027
               LDA    D8027
               BNE    L8522
               JMP    L8548
L8522          LDA    $09
               STA    $E1
               LDA    $1F
               STA    $E8
               JSR    SUB88A0
               JSR    SUB8947
               LDA    $E0
               LDX    $E7
               STA    $E7
               STX    $E0
               JSR    SUB8947
               LDA    $1F
               STA    $E1
               JSR    SUB88A0
               JMP    L8548
               HEX    20DDFB
L8548          JMP    $D995
L854B          JMP    $E199
SUB854E        LDA    $E9
               CMP    #$02
               BCS    L855D
               LDA    #$01
               STA    D8014
               LDA    #$94
               BRA    L8571
L855D          CMP    #$03
               BEQ    L856A
               LDA    #$02
               STA    D8014
               LDA    #$95
               BRA    L8571
L856A          LDA    #$03
               STA    D8014
               LDA    #$96
L8571          STA    D88D1+2
               STA    D8982+2
               STA    D89BF+2
               STA    D89EE+2
               STA    D8A26+2
               STA    D8A4F+2
               STA    D8A74+2
               STA    D8A8B+2
               STA    D8AFB+2
               RTS
SUB858D        LDA    D802F
               CMP    D8030
               BNE    L8596
               RTS
L8596          CMP    #$01
               BNE    L85BC
               LDX    #$04
               STX    L86BA+2
               STX    L86DD+2
               LDX    #$05
               STX    D86C0+2
               STX    D86E3+2
               LDX    #$06
               STX    D86C6+2
               STX    D86E9+2
               LDX    #$07
               STX    D86CC+2
               STX    D86EF+2
               BRA    L8609
L85BC          CMP    #$02
               BNE    L85E2
               LDX    #$08
               STX    L86BA+2
               STX    L86DD+2
               LDX    #$09
               STX    D86C0+2
               STX    D86E3+2
               LDX    #$0A
               STX    D86C6+2
               STX    D86E9+2
               LDX    #$0B
               STX    D86CC+2
               STX    D86EF+2
               BRA    L8609
L85E2          CMP    #$03
               BNE    L8608
               LDX    #$0C
               STX    L86BA+2
               STX    L86DD+2
               LDX    #$0D
               STX    D86C0+2
               STX    D86E3+2
               LDX    #$0E
               STX    D86C6+2
               STX    D86E9+2
               LDX    #$0F
               STX    D86CC+2
               STX    D86EF+2
               BRA    L8609
L8608          RTS
L8609          LDA    D8030
               CMP    #$01
               BNE    L8632
               LDX    #$04
               STX    D86BD+2
               STX    D86E0+2
               LDX    #$05
               STX    D86C3+2
               STX    D86E6+2
               LDX    #$06
               STX    D86C9+2
               STX    D86EC+2
               LDX    #$07
               STX    D86CF+2
               STX    D86F2+2
               BRA    L867F
L8632          CMP    #$02
               BNE    L8658
               LDX    #$08
               STX    D86BD+2
               STX    D86E0+2
               LDX    #$09
               STX    D86C3+2
               STX    D86E6+2
               LDX    #$0A
               STX    D86C9+2
               STX    D86EC+2
               LDX    #$0B
               STX    D86CF+2
               STX    D86F2+2
               BRA    L867F
L8658          CMP    #$03
               BNE    L867E
               LDX    #$0C
               STX    D86BD+2
               STX    D86E0+2
               LDX    #$0D
               STX    D86C3+2
               STX    D86E6+2
               LDX    #$0E
               STX    D86C9+2
               STX    D86EC+2
               LDX    #$0F
               STX    D86CF+2
               STX    D86F2+2
               BRA    L867F
L867E          RTS
L867F          JSR    SUB8733
               STA    RAMWRTON
               LDA    L86BA+2
               STA    L86BA+2
               LDA    D86BD+2
               STA    D86BD+2
               LDA    D86C0+2
               STA    D86C0+2
               LDA    D86C3+2
               STA    D86C3+2
               LDA    D86C6+2
               STA    D86C6+2
               LDA    D86C9+2
               STA    D86C9+2
               LDA    D86CC+2
               STA    D86CC+2
               LDA    D86CF+2
               STA    D86CF+2
               STA    RAMRDON
               LDX    #$00
L86BA          LDA    $0400,X
D86BD          STA    $1000,X
D86C0          LDA    $0500,X
D86C3          STA    $1100,X
D86C6          LDA    $0600,X
D86C9          STA    $1200,X
D86CC          LDA    $0700,X
D86CF          STA    $1300,X
               INX
               BNE    L86BA
               STA    RAMWRTOFF
               STA    RAMRDOFF
               LDX    #$00
L86DD          LDA    $0400,X
D86E0          STA    $0C00,X
D86E3          LDA    $0500,X
D86E6          STA    $0D00,X
D86E9          LDA    $0600,X
D86EC          STA    $0E00,X
D86EF          LDA    $0700,X
D86F2          STA    $0F00,X
               INX
               BNE    L86DD
               JSR    SUB878E
               RTS
SUB86FC        JSR    SUB8733
               STA    RAMRDON
               STA    RAMWRTON
               LDA    #$A0
               LDX    #$00
L8709          STA    $0400,X
               STA    $0500,X
               STA    $0600,X
               STA    $0700,X
               INX
               BNE    L8709
               STA    RAMWRTOFF
               STA    RAMRDOFF
               LDX    #$00
L8720          STA    $0400,X
               STA    $0500,X
               STA    $0600,X
               STA    $0700,X
               INX
               BNE    L8720
               JSR    SUB878E
               RTS
SUB8733        LDA    $0478
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
SUB878E        LDA    $9620
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
SUB87E9        CMP    RDVBL
               BPL    SUB87E9
L87EE          CMP    RDVBL
               BMI    L87EE
               STA    KEYBD
               LDA    $E9
               CMP    #$02
               BEQ    L8801
               LDA    LOWSCR
               BRA    L8804
L8801          LDA    HISCR
L8804          RTS
SUB8805        LDA    D8014
               CMP    #$03
               BNE    L8835
               LDX    #$00
               LDA    #$00
L8810          STA    $0C00,X
               STA    $0D00,X
               STA    $0E00,X
               STA    $0F00,X
               INX
               BNE    L8810
               STA    RAMWRTON
L8822          STA    $0C00,X
               STA    $0D00,X
               STA    $0E00,X
               STA    $0F00,X
               INX
               BNE    L8822
               STA    RAMWRTOFF
               RTS
L8835          LDX    $E3
               LDA    D9530,X
               TAY
               LDA    D8014
               CMP    #$02
               BEQ    L8852
               TYA
               JSR    SUB9059
               LDA    D802E
               CMP    #$27
               BEQ    L8851
               TYA
               JSR    SUB9472
L8851          RTS
L8852          TYA
               JSR    SUB90E6
               LDA    D802E
               CMP    #$27
               BEQ    L8861
               TYA
               JSR    SUB949F
L8861          RTS
SUB8862        LDA    $E0
D8864          NOP
               CMP    $E7
               BCC    L8873
               BEQ    L889F
               LDX    $E7
               STA    D802D
               STX    D802C
L8873          LDA    $E0
               BPL    L887B
               STZ    $E0
               BRA    L8883
L887B          CMP    #$50
               BCC    L8883
               LDA    #$4F
               STA    $E0
L8883          LDA    $E7
               BPL    L888B
               STZ    $E7
               BRA    L8893
L888B          CMP    #$50
               BCC    L8893
               LDA    #$4F
               STA    $E7
L8893          LDA    $E1
               BPL    L8898
               RTS
L8898          CMP    D802E
               BEQ    SUB88A0
               BCC    SUB88A0
L889F          RTS
SUB88A0        LDA    $E0
               CMP    $E7
               BCC    L88B5
               BEQ    L88B2
               LDX    $E7
               STA    D802D
               STX    D802C
               BRA    L88BD
L88B2          JMP    SUB8AEE
L88B5          STA    D802C
               LDA    $E7
               STA    D802D
L88BD          SEC
               SBC    D802C
               INC
               STA    D8015
               INC    D802D
               LDA    $E1
               LSR
               TAX
               LDA    D9540,X
               STA    $06
D88D1          LDA    D9400,X
               STA    $07
               LDA    $E1
               BIT    #$01
               BEQ    L88DF
               JMP    L88F3
L88DF          LDA    $E3
               STA    $E4
               TAX
               LDA    D9200,X
               STA    $E5
               LDA    #$F0
               STA    D8919+1
               STA    D8935+1
               BRA    L8908
L88F3          LDX    $E3
               LDA    D9520,X
               STA    $E4
               TAX
               LDA    D9200,X
               STA    $E5
               LDA    #$0F
               STA    D8919+1
               STA    D8935+1
L8908          LDA    D802C
               BIT    #$01
               BNE    L8931
               LSR
               TAY
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
D8919          AND    #$F0
               ORA    $E5
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               INC    D802C
               LDA    D802C
               CMP    D802D
               BCC    L8908
               RTS
L8931          LSR
               TAY
               LDA    ($06),Y
D8935          AND    #$F0
               ORA    $E4
               STA    ($06),Y
               INC    D802C
               LDA    D802C
               CMP    D802D
               BCC    L8908
               RTS
SUB8947        LDA    $E1
               CMP    $E8
               BCC    L895A
               BEQ    L8957
               LDX    $E8
               STA    $E8
               STX    $E1
               BRA    L895A
L8957          JMP    SUB8AEE
L895A          LDA    $E8
               SEC
               SBC    $E1
               INC
               STA    D8015
               LDA    $E0
               BIT    #$01
               BEQ    L896C
               JMP    L8A10
L896C          LSR
               TAY
               LDA    $E1
               LSR
               STA    D8016
               LDA    $E1
               BIT    #$01
               BEQ    L89B0
               LDX    D8016
               LDA    D9540,X
               STA    $06
D8982          LDA    D9400,X
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
L89B0          LDA    D8015
               CMP    #$02
               BCC    L89E0
               LDX    D8016
               LDA    D9540,X
               STA    $06
D89BF          LDA    D9400,X
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
               BRA    L89B0
L89E0          LDA    D8015
               BNE    L89E6
               RTS
L89E6          LDX    D8016
               LDA    D9540,X
               STA    $06
D89EE          LDA    D9400,X
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
L8A10          LSR
               TAY
               LDA    $E1
               LSR
               STA    D8016
               LDA    $E1
               BIT    #$01
               BEQ    L8A40
               LDX    D8016
               LDA    D9540,X
               STA    $06
D8A26          LDA    D9400,X
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
L8A40          LDA    D8015
               CMP    #$02
               BCC    L8A66
               LDX    D8016
               LDA    D9540,X
               STA    $06
D8A4F          LDA    D9400,X
               STA    $07
               LDX    $E3
               LDA    D9530,X
               STA    ($06),Y
               DEC    D8015
               DEC    D8015
               INC    D8016
               BRA    L8A40
L8A66          LDA    D8015
               BNE    L8A6C
               RTS
L8A6C          LDX    D8016
               LDA    D9540,X
               STA    $06
D8A74          LDA    D9400,X
               STA    $07
               LDA    ($06),Y
               AND    #$F0
               ORA    $E3
               STA    ($06),Y
               RTS
SUB8A82        LDA    $E1
               LSR
               TAX
               LDA    D9540,X
               STA    $06
D8A8B          LDA    D9400,X
               STA    $07
               LDA    $E0
               BIT    #$01
               BNE    L8ABE
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
               BEQ    L8AB7
               LDA    $E9
               AND    #$F0
               LSR
               LSR
               LSR
               LSR
               STA    $E9
               RTS
L8AB7          LDA    $E9
               AND    #$0F
               STA    $E9
               RTS
L8ABE          LSR
               TAY
               LDA    ($06),Y
               STA    $E9
               LDA    $E1
               AND    #$01
               BEQ    L8AD5
               LDA    $E9
               AND    #$F0
               LSR
               LSR
               LSR
               LSR
               STA    $E9
               RTS
L8AD5          LDA    $E9
               AND    #$0F
               STA    $E9
               RTS
SUB8ADC        LDA    $E0
D8ADE          NOP
               CMP    #$50
               BCC    L8AE4
               RTS
L8AE4          LDA    $E1
               CMP    D802E
               BEQ    SUB8AEE
               BCC    SUB8AEE
               RTS
SUB8AEE        LDA    $E3
               STA    $E4
               LDA    $E1
               LSR
               TAX
               LDA    D9540,X
               STA    $06
D8AFB          LDA    D9400,X
               STA    $07
               LDX    $E3
               LDA    $E0
               BIT    #$01
               BNE    L8B43
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
               BEQ    L8B30
               LDA    $E5
               AND    #$0F
               STA    $E5
               LDA    D9520,X
               TAX
               LDA    D9200,X
               STA    $E4
               BRA    L8B36
L8B30          LDA    $E5
               AND    #$F0
               STA    $E5
L8B36          LDA    $E4
               ORA    $E5
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               RTS
L8B43          LSR
               TAY
               LDA    ($06),Y
               STA    $E5
               LDA    $E1
               AND    #$01
               BEQ    L8B5C
               LDA    $E5
               AND    #$0F
               STA    $E5
               LDA    D9520,X
               STA    $E4
               BRA    L8B62
L8B5C          LDA    $E5
               AND    #$F0
               STA    $E5
L8B62          LDA    $E4
               ORA    $E5
               STA    ($06),Y
               RTS
SUB8B69        LDA    #$00
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
SUB8B8C        LDA    $E0
               CMP    $E7
               BCC    L8BA2
               LDX    $E7
               STA    $E7
               STX    $E0
               LDA    $E1
               LDX    $E8
               STA    $E8
               STX    $E1
               BRA    L8BB6
L8BA2          LDA    $E1
               CMP    $E8
               BCC    L8BB6
               LDX    $E8
               STA    $E8
               STX    $E1
               LDX    $E7
               LDA    $E0
               STA    $E7
               STX    $E0
L8BB6          LDA    $E0
               SEC
               SBC    $E7
               BEQ    L8BD5
               BCS    L8BDD
               EOR    #$FF
               INC
               STA    D801C
               LDA    $E0
               STA    D8019
               LDA    $E1
               STA    D801B
               SEC
               SBC    $E8
               JMP    L8BED
L8BD5          JSR    SUB8947
               RTS
L8BD9          JSR    SUB88A0
               RTS
L8BDD          STA    D801C
               LDA    $E7
               STA    D8019
               LDA    $E8
               STA    D801B
               SEC
               SBC    $E1
L8BED          BCS    L8BFA
               EOR    #$FF
               ADC    #$01
               STA    D801E
               LDA    #$EE
               BNE    L8C01
L8BFA          BEQ    L8BD9
               STA    D801E
               LDA    #$CE
L8C01          STA    D8C44
               STA    D8C79
               LDA    D801C
               CMP    D801E
               BCS    L8C12
               JMP    L8C49
L8C12          INC
               STA    $E6
               DEC
               LSR
               STA    D8021
               JMP    L8C25
L8C1D          RTS
L8C1E          STA    D8021
L8C21          DEC    $E6
               BEQ    L8C1D
L8C25          LDA    D8019
               STA    $E0
               LDA    D801B
               STA    $E1
               JSR    SUB8AEE
               INC    D8019
               LDA    D8021
               SEC
               SBC    D801E
               BCS    L8C1E
               ADC    D801C
               STA    D8021
D8C44          INC    D801B
               BRA    L8C21
L8C49          LDX    $E1
               CPX    D801B
               BNE    L8C52
               LDX    $E8
L8C52          STX    D8C75+1
               LDA    D801E
               LSR
               STA    D8021
               LDX    D801B
               JMP    L8C65
L8C62          STA    D8021
L8C65          LDA    D8019
               STA    $E0
               LDA    D801B
               STA    $E1
               JSR    SUB8AEE
               LDA    D801B
D8C75          CMP    #$00
               BEQ    L8C90
D8C79          INC    D801B
               LDA    D8021
               SEC
               SBC    D801C
               BCS    L8C62
               ADC    D801E
               STA    D8021
               INC    D8019
               BNE    L8C65
L8C90          RTS
SUB8C91        LDA    D8026
               STA    D8025
               STA    $EE
               STZ    $EF
               JSR    SUB8D4D
L8C9E          LDA    $EF
               CMP    $EE
               BCC    L8CA5
               RTS
L8CA5          LDA    $EF
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
               BPL    L8CDA
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
L8CDA          LDA    $EE
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
               JSR    SUB8ADC
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB8ADC
               CLC
               LDA    $ED
               ADC    $EB
               STA    $E1
               JSR    SUB8ADC
               CLC
               LDA    $EC
               ADC    $EE
               STA    $E0
               JSR    SUB8ADC
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB8ADC
               CLC
               LDA    $EC
               ADC    $EB
               STA    $E0
               JSR    SUB8ADC
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB8ADC
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               JSR    SUB8ADC
               JMP    L8C9E
SUB8D4D        LDA    $EE
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
               JSR    SUB8ADC
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB8ADC
               LDA    $EC
               STA    $E0
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB8ADC
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB8ADC
               RTS
SUB8D90        LDA    D8026
               STA    D8025
               STA    $EE
               STZ    $EF
               JSR    SUB8E64
L8D9D          LDA    $EF
               CMP    $EE
               BCC    L8DA4
               RTS
L8DA4          LDA    $EF
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
               BPL    L8DD9
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
L8DD9          LDA    $EE
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
               JSR    SUB8ADC
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB8ADC
               JSR    SUB8862
               LDA    $E0
               STA    $E7
               CLC
               LDA    $ED
               ADC    $EB
               STA    $E1
               JSR    SUB8ADC
               CLC
               LDA    $EC
               ADC    $EE
               STA    $E0
               JSR    SUB8ADC
               JSR    SUB8862
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               STA    $E7
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB8ADC
               CLC
               LDA    $EC
               ADC    $EB
               STA    $E0
               JSR    SUB8ADC
               JSR    SUB8862
               LDA    $E0
               STA    $E7
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB8ADC
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               JSR    SUB8ADC
               JSR    SUB8862
               JMP    L8D9D
SUB8E64        LDA    $EE
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
               JSR    SUB8ADC
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB8ADC
               JSR    SUB8862
               LDA    $EC
               STA    $E0
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB8ADC
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB8ADC
               RTS
SUB8EAC        LDA    $E1
               LDX    $E8
               CMP    $E8
               BCC    L8EBA
               STA    $E8
               STX    $E1
               BRA    L8EBA
L8EBA          INC    $E8
               LDA    $E1
L8EBE          STA    $E1
               JSR    SUB88A0
               INC    $E1
               LDA    $E1
               CMP    $E8
               BCC    L8EBE
               RTS
SUB8ECC        STA    RAMWRTON
               LDX    #$00
L8ED1          TXA
               STZ    $FE
               CLC
               ADC    #$10
               STA    $FF
               LDA    #$00
               LDY    #$00
L8EDD          STA    ($FE),Y
               INY
               CPY    #$50
               BCC    L8EDD
               INX
               CPX    #$30
               BCC    L8ED1
               STA    RAMWRTOFF
               STZ    $FE
               LDA    #$40
               STA    $FF
               LDA    D802A
               STA    $E0
               LDA    D802B
               STA    $E1
               JSR    SUB8A82
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
L8F24          LDA    $FE
               BNE    L8F2F
               LDA    $FF
               CMP    #$40
               BNE    L8F2F
               RTS
L8F2F          SEC
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
               LDA    ($EA)
               STA    RAMRDOFF
               BNE    L8F24
               JSR    SUB8AEE
               LDA    #$02
               STA    RAMWRTON
               STA    ($EA)
               STA    RAMWRTOFF
               LDA    $09
               CMP    D802E
               BCS    L8FAF
               INC
               STA    $E1
               LDA    $08
               STA    $E0
               JSR    SUB8A82
               LDA    $E9
               CMP    D8028
               BNE    L8FAF
               CMP    $E3
               BEQ    L8FAF
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
L8FAF          LDA    $09
               BEQ    L8FE6
               DEC
               STA    $E1
               LDA    $08
               STA    $E0
               JSR    SUB8A82
               LDA    $E9
               CMP    D8028
               BNE    L8FE6
               CMP    $E3
               BEQ    L8FE6
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
L8FE6          LDA    $08
               CMP    #$4F
               BCS    L901F
               INC
               STA    $E0
               LDA    $09
               STA    $E1
               JSR    SUB8A82
               LDA    $E9
               CMP    D8028
               BNE    L901F
               CMP    $E3
               BEQ    L901F
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
L901F          LDA    $08
               BEQ    L9056
               DEC
               STA    $E0
               LDA    $09
               STA    $E1
               JSR    SUB8A82
               LDA    $E9
               CMP    D8028
               BNE    L9056
               CMP    $E3
               BEQ    L9056
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
L9056          JMP    L8F24
SUB9059        LDX    #$28
L905B          DEX
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
               BNE    L905B
               TAX
               LDA    D9200,X
               LDX    #$28
L90A0          DEX
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
               BNE    L90A0
               RTS
SUB90E6        LDX    #$28
L90E8          DEX
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
               BNE    L90E8
               TAX
               LDA    D9200,X
               LDX    #$28
L912D          DEX
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
               BNE    L912D
               RTS
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
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

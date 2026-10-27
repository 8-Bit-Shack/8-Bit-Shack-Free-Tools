************************************************************
* dolores - DLCOREAMP (disassembly)
*
* Disassembled from the original binary (9248 bytes, $7000-$941F).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../../README.txt for attribution and terms.
* Load address: $7000. Entry point(s): $7000, $709A (65C02 code allowed: XC).
************************************************************

               XC
               ORG    $7000

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
COUT           EQU    $FDED

START          JSR    SUB87D5
               LDA    #$4C
               STA    $03F5
               LDA    #$9A
               STA    $03F6
               LDA    #$70
               STA    $03F7
               RTS
               HEX    4C7B874CB7874CF8844C2C824C9E834C
               HEX    40854C5C854CF87C4CA27D4CF8874C6A
               HEX    884CE07E4CE87F4CEA804C09824C2A8A
               HEX    4CC6844C967C4C81774CD8774CD7724C
               HEX    397B4C1E734C2F894CA8894CE5880000
               HEX    0000000000
D7068          HEX    00
D7069          HEX    00
D706A          HEX    00
D706B          HEX    00
D706C          HEX    00
D706D          HEX    0000
D706F          HEX    00
D7070          HEX    0000
D7072          HEX    000000
D7075          HEX    0000
D7077          HEX    00
D7078          HEX    00
D7079          HEX    00
D707A          HEX    00
D707B          HEX    00
D707C          HEX    00
D707D          HEX    00
D707E          HEX    00
D707F          HEX    00
D7080          HEX    00
D7081          HEX    00
D7082          HEX    00
D7083          HEX    00
D7084          HEX    0001
D7086          HEX    00
D7087          HEX    00
D7088          HEX    00
D7089          HEX    0000
D708B          HEX    0000
D708D          HEX    00
D708E          HEX    00
D708F          HEX    00
D7090          HEX    0000
D7092          HEX    00
D7093          HEX    00
D7094          HEX    00
D7095          HEX    00
D7096          HEX    00
D7097          HEX    00
D7098          HEX    00
D7099          HEX    00
D709A          STA    KEYBD
               CMP    #$88
               BNE    L70A4
               JMP    L73D6
L70A4          CMP    #$89
               BNE    L70AB
               JMP    L73DC
L70AB          CMP    #$8D
               BNE    L70B2
               JMP    L7412
L70B2          CMP    #$8F
               BNE    L70B9
               JMP    L744D
L70B9          CMP    #$D7
               BNE    L70C0
               JMP    L7499
L70C0          CMP    #$A0
               BNE    L70C7
               JMP    L74DB
L70C7          CMP    #$8E
               BNE    L70CE
               JMP    L74ED
L70CE          CMP    #$46
               BNE    L70D5
               JMP    L7539
L70D5          CMP    #$53
               BNE    L70DC
               JMP    L73E8
L70DC          CMP    #$44
               BNE    L70E3
               JMP    L73FD
L70E3          CMP    #$4C
               BNE    L70EA
               JMP    L757E
L70EA          CMP    #$43
               BNE    L70F1
               JMP    L75ED
L70F1          CMP    #$52
               BNE    L70F8
               JMP    L76D0
L70F8          CMP    #$48
               BNE    L70FF
               JMP    L7578
L70FF          CMP    #$4D
               BNE    L7106
               JMP    L73E2
L7106          CMP    #$54
               BNE    L710D
               JMP    L73A5
L710D          CMP    #$47
               BNE    L7114
               JMP    L73BB
L7114          CMP    #$B7
               BNE    L711B
               JMP    L738D
L711B          CMP    #$A8
               BNE    L7122
               JMP    L7343
L7122          CMP    #$94
               BNE    L7129
               JMP    L727E
L7129          CMP    #$85
               BNE    L7130
               JMP    L7304
L7130          CMP    #$E5
               BNE    L7137
               JMP    L7263
L7137          CMP    #$BE
               BNE    L713E
               JMP    L7209
L713E          CMP    #$56
               BNE    L7145
               JMP    L848B
L7145          CMP    #$84
               BNE    L714C
               JMP    L71A3
L714C          CMP    #$AE
               BNE    L7153
               JMP    L7163
L7153          CMP    #$A7
               BNE    L715A
               JMP    L715D
L715A          JMP    $DEC9
L715D          JSR    SUB88E5
               JMP    L777B
L7163          JSR:   $B1
               JSR    $E6F8
               STX    D7098
               JSR    $DEBE
               JSR    $E6F8
               STX    D7099
               CMP    #$2C
               BNE    L7189
               JSR    $DEBE
               JSR    $E6F8
               STX    D708B
               CPX    #$10
               BCC    L7189
               JMP    L777E
L7189          LDA    D7098
               CMP    #$50
               BCC    L7193
               JMP    L777E
L7193          LDA    D7099
               CMP    #$30
               BCC    L719D
               JMP    L777E
L719D          JSR    SUB89A8
               JMP    L777B
L71A3          JSR:   $B1
               JSR    $E6F8
               STX    D708D
               JSR    $DEBE
               JSR    $E6F8
               STX    D708F
               JSR    $DEBE
               JSR    $E6F8
               STX    D708E
               JSR    $DEBE
               JSR    $E6F8
               STX    D7090
               CMP    #$2C
               BNE    L71DB
               JSR    $DEBE
               JSR    $E6F8
               STX    D708B
               CPX    #$10
               BCC    L71DB
               JMP    L777E
L71DB          LDA    D708D
               CMP    #$50
               BCC    L71E5
               JMP    L777E
L71E5          LDA    D708E
               CMP    #$50
               BCC    L71EF
               JMP    L777E
L71EF          LDA    D708F
               CMP    #$30
               BCC    L71F9
               JMP    L777E
L71F9          LDA    D7090
               CMP    #$30
               BCC    L7203
               JMP    L777E
L7203          JSR    SUB892F
               JMP    L777B
L7209          JSR:   $B1
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D7093
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D708D
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D708F
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D708E
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D7090
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D708B
               JSR    SUB7781
               JMP    L777B
L7263          JSR:   $B1
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D708B
               CMP    #$11
               BCC    L7278
               JMP    L777E
L7278          JSR    SUB77D8
               JMP    L777B
L727E          JSR:   $B1
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D7093
               BNE    L7291
               JMP    L777E
L7291          CMP    #$11
               BCC    L7298
               JMP    L777E
L7298          JSR    SUB797B
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDY    #$05
               LDA    $C083
               LDA    $C083
               LDA    $50
               STA    D7094
               STA    ($1B),Y
               LDA    $C082
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDY    #$06
               LDA    $C083
               LDA    $C083
               LDA    $50
               STA    D7095
               STA    ($1B),Y
               LDA    $C082
               JSR    SUB799E
               JMP    L777B
               HEX    207B79A005AD947048AD83C0AD83C068
               HEX    911BAD82C0A006AD957048AD83C0AD83
               HEX    C068911BAD82C0209E794C7B77
L7304          JSR:   $B1
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D7093
               BNE    L7317
               JMP    L777E
L7317          CMP    #$11
               BCC    L731E
               JMP    L777E
L731E          STA    KEYBD
               JSR    SUB797B
               LDY    #$05
               LDA    $C080
               LDA    ($1B),Y
               STA    D7094
               LDA    $C082
               INY
               LDA    $C080
               LDA    ($1B),Y
               STA    D7095
               LDA    $C082
               JSR    SUB7A80
               JMP    L777B
L7343          JSR:   $B1
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D7093
               BNE    L7356
               JMP    L777E
L7356          CMP    #$11
               BCC    L735D
               JMP    L777E
L735D          JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D7088
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D7089
               JSR    $DEBE
               JSR    $DD67
               JSR    $E752
               LDA    $50
               STA    D708B
               JSR    SUB7B39
               JMP    L777B
L738D          JSR:   $B1
               JSR    $E6F8
               STX    D7083
               JSR    $DEBE
               JSR    $E6F8
               STX    D7084
               JSR    SUB822C
               JMP    L777B
L73A5          LDA    #$01
               STA    D7083
               LDA    #$03
               STA    D7084
               JSR    SUB822C
               JSR    SUB839E
               LDA    TXTSET
               JMP    L777B
L73BB          LDA    TXTCLR
               LDA    #$2F
               STA    D7082
               LDA    MIXCLR
               LDA    #$03
               STA    D7083
               LDA    #$01
               STA    D7084
               JSR    SUB822C
               JMP    L777B
L73D6          JSR    SUB877B
               JMP    L777B
L73DC          JSR    SUB87B7
               JMP    L777B
L73E2          JSR    SUB84C6
               JMP    L777B
L73E8          JSR:   $B1
               JSR    $E6F8
               STX    $E9
               CPX    #$03
               BCC    L73F7
               JMP    L777E
L73F7          JSR    SUB8540
               JMP    L777B
L73FD          JSR:   $B1
               JSR    $E6F8
               STX    $E9
               CPX    #$04
               BCC    L740C
               JMP    L777E
L740C          JSR    SUB84F8
               JMP    L777B
L7412          JSR:   $B1
               JSR    $E6F8
               STX    $E0
               JSR    $DEBE
               JSR    $E6F8
               STX    $E1
               CMP    #$2C
               BNE    L7435
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L7435
               JMP    L777E
L7435          LDA    $E0
               CMP    #$50
               BCC    L743E
               JMP    L777E
L743E          LDA    $E1
               CMP    #$30
               BCC    L7447
               JMP    L777E
L7447          JSR    SUB886A
               JMP    L777B
L744D          JSR:   $B1
               JSR    $E6F8
               STX    $E1
               JSR    $DEBE
               JSR    $E6F8
               STX    $E8
               JSR    $DEBE
               JSR    $E6F8
               STX    $E0
               CMP    #$2C
               BNE    L7478
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L7478
               JMP    L777E
L7478          LDA    $E0
               CMP    #$50
               BCC    L7481
               JMP    L777E
L7481          LDA    $E1
               CMP    #$30
               BCC    L748A
               JMP    L777E
L748A          LDA    $E8
               CMP    #$30
               BCC    L7493
               JMP    L777E
L7493          JSR    SUB7DA2
               JMP    L777B
L7499          JSR:   $B1
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
               BCC    L74C1
               JMP    L777E
L74C1          LDA    $E1
               CMP    #$30
               BCC    L74CA
               JMP    L777E
L74CA          JSR    SUB87F8
               LDY    #$00
               LDA    #$00
               STA    ($83),Y
               LDA    $E9
               INY
               STA    ($83),Y
               JMP    L777B
L74DB          JSR:   $B1
               JSR    $E6F8
               CPX    #$10
               BCC    L74E8
               JMP    L777E
L74E8          STX    $E3
               JMP    L777B
L74ED          JSR:   $B1
               JSR    $E6F8
               STX    $E0
               JSR    $DEBE
               JSR    $E6F8
               STX    $E7
               JSR    $DEBE
               JSR    $E6F8
               STX    $E1
               CMP    #$2C
               BNE    L7518
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L7518
               JMP    L777E
L7518          LDA    $E0
               CMP    #$50
               BCC    L7521
               JMP    L777E
L7521          LDA    $E1
               CMP    #$30
               BCC    L752A
               JMP    L777E
L752A          LDA    $E7
               CMP    #$50
               BCC    L7533
               JMP    L777E
L7533          JSR    SUB7CF8
               JMP    L777B
L7539          JSR:   $B1
               JSR    $E6F8
               STX    D707E
               JSR    $DEBE
               JSR    $E6F8
               STX    D707F
               CMP    #$2C
               BNE    L755E
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L755E
               JMP    L777E
L755E          LDA    D707E
               CMP    #$50
               BCC    L7568
               JMP    L777E
L7568          LDA    D707F
               CMP    #$30
               BCC    L7572
               JMP    L777E
L7572          JSR    SUB8A2A
               JMP    L777B
L7578          JSR    SUB855C
               JMP    L777B
L757E          JSR:   $B1
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
               BNE    L75B1
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L75B1
               JMP    L777E
L75B1          LDA    $E0
               CMP    #$50
               BCC    L75BA
               JMP    L777E
L75BA          LDA    $E1
               CMP    #$30
               BCC    L75C3
               JMP    L777E
L75C3          LDA    $E8
               CMP    #$30
               BCC    L75CC
               JMP    L777E
L75CC          LDA    $E7
               CMP    #$50
               BCC    L75D5
               JMP    L777E
L75D5          LDA    $E0
               CMP    $E7
               BNE    L75E7
               LDA    $E1
               CMP    $E8
               BNE    L75E7
               JSR    SUB886A
               JMP    L777B
L75E7          JSR    SUB7EE0
               JMP    L777B
L75ED          STZ    D707B
               STZ    D707D
               JSR:   $B1
               JSR    $E6F8
               STX    $EC
               JSR    $DEBE
               JSR    $E6F8
               STX    $ED
               JSR    $DEBE
               JSR    $E6F8
               STX    D707A
               CMP    #$2C
               BNE    L7622
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L761F
               JMP    L777E
L761F          INC    D707B
L7622          CMP    #$2C
               BNE    L7639
               JSR    $DEBE
               JSR    $E6F8
               STX    D707C
               CPX    #$10
               BCC    L7636
               JMP    L777E
L7636          INC    D707B
L7639          LDA    $EC
               CMP    #$50
               BCC    L7642
               JMP    L777E
L7642          LDA    $ED
               CMP    #$30
               BCC    L764B
               JMP    L777E
L764B          LDA    D707A
               CMP    #$50
               BCC    L7655
               JMP    L777E
L7655          LDA    D707A
               CMP    $EC
               BCC    L765E
               BRA    L769A
L765E          CMP    $ED
               BCC    L7664
               BRA    L769A
L7664          CLC
               ADC    $EC
               CMP    #$50
               BCC    L766D
               BRA    L769A
L766D          CLC
               LDA    D707A
               ADC    $ED
               CMP    D7082
               BEQ    L767C
               BCC    L767C
               BRA    L769A
L767C          LDA    #$4C
               STA    SUB7CBA
               STA    SUB8855
               LDA    #$F8
               STA    SUB7CBA+1
               LDA    #$7C
               STA    D7CBC
               LDA    #$6A
               STA    SUB8855+1
               LDA    #$88
               STA    SUB8855+2
               BRA    L76B2
L769A          LDA    #$A5
               STA    SUB7CBA
               STA    SUB8855
               LDA    #$E0
               STA    SUB7CBA+1
               STA    SUB8855+1
               LDA    #$EA
               STA    D7CBC
               STA    SUB8855+2
L76B2          LDA    D707B
               BEQ    L76CA
               JSR    SUB80EA
               LDA    D707C
               STA    $E3
               DEC    D707B
               LDA    D707B
               BNE    L76CA
               JMP    L777B
L76CA          JSR    SUB7FE8
               JMP    L777B
L76D0          STZ    D707B
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
               BNE    L770D
               JSR    $DEBE
               JSR    $E6F8
               STX    $E3
               CPX    #$10
               BCC    L770A
               JMP    L777E
L770A          INC    D707B
L770D          CMP    #$2C
               BNE    L7724
               JSR    $DEBE
               JSR    $E6F8
               STX    D707C
               CPX    #$10
               BCC    L7721
               JMP    L777E
L7721          INC    D707B
L7724          LDA    $E0
               CMP    #$50
               BCC    L772D
               JMP    L777E
L772D          LDA    $E1
               CMP    #$30
               BCC    L7736
               JMP    L777E
L7736          LDA    $E7
               CMP    #$50
               BCC    L773F
               JMP    L777E
L773F          LDA    $E8
               CMP    #$30
               BCC    L7748
               JMP    L777E
L7748          LDA    $E0
               CMP    $E7
               BNE    L775A
               LDA    $E1
               CMP    $E8
               BNE    L775A
               JSR    SUB886A
               JMP    L777B
L775A          LDA    D707B
               BEQ    L7772
               JSR    SUB8209
               LDA    D707C
               STA    $E3
               DEC    D707B
               LDA    D707B
               BNE    L7772
               JMP    L777B
L7772          JSR    SUB7C96
               JMP    L777B
               HEX    20DDFB
L777B          JMP    $D995
L777E          JMP    $E199
SUB7781        INC    D708E
               INC    D7090
               LDA    D708E
               SEC
               SBC    D708D
               STA    D7088
               LDA    D7090
               SEC
               SBC    D708F
               STA    D7089
               LDA    #$00
               STA    $FE
               LDA    #$95
               STA    $FF
               STZ    $0A
               LDA    D708F
               STA    $08
L77AA          LDA    $08
               STA    $E1
               LDA    D708D
               STA    $09
L77B3          LDA    $09
               STA    $E0
               JSR    SUB87F8
               LDA    $E9
               LDY    $0A
               STA    ($FE),Y
               INC    $0A
               INC    $09
               LDA    $09
               CMP    D708E
               BCC    L77B3
               INC    $08
               LDA    $08
               CMP    D7090
               BCC    L77AA
               JSR    SUB7B39
               RTS
SUB77D8        LDX    #$00
               LDA    #$00
L77DC          STA    D9000,X
               STA    D9100,X
               INX
               BNE    L77DC
               LDA    D708B
               CMP    #$10
               BNE    L77ED
               RTS
L77ED          LDA    D708B
               ASL
               ASL
               ASL
               ASL
               TAX
               LDY    #$10
L77F7          LDA    D9000,X
               ORA    #$F0
               STA    D9000,X
               INX
               DEY
               BNE    L77F7
               LDA    D708B
               TAX
               LDY    #$10
L7809          LDA    D9000,X
               ORA    #$0F
               STA    D9000,X
               TXA
               CLC
               ADC    #$10
               TAX
               DEY
               BNE    L7809
               LDX    D708B
               LDA    D784C,X
               ASL
               ASL
               ASL
               ASL
               TAX
               LDY    #$10
L7826          LDA    D9100,X
               ORA    #$F0
               STA    D9100,X
               INX
               DEY
               BNE    L7826
               LDX    D708B
               LDA    D784C,X
               TAX
               LDY    #$10
L783B          LDA    D9100,X
               ORA    #$0F
               STA    D9100,X
               TXA
               CLC
               ADC    #$10
               TAX
               DEY
               BNE    L783B
               RTS
D784C          HEX    00080109020A030B040C050D060E070F
SUB785C        LDA    D7095
               LSR
               STA    D7087
               LDA    D7094
               LSR
               STA    D7086
               JSR    SUB797B
               LDA    D7094
               AND    #$01
               BNE    L7899
               LDA    D7095
               AND    #$01
               BNE    L78CB
               JSR    SUB7921
               LDY    #$00
               LDA    ($1B),Y
               STA    D7088
               INY
               INY
               INY
               STA    ($1B),Y
               DEY
               DEY
               LDA    ($1B),Y
               STA    D7089
               INY
               INY
               INY
               STA    ($1B),Y
               JMP    L7920
L7899          LDA    D7095
               AND    #$01
               BNE    L78F6
               CLC
               LDA    $E7
               ADC    #$A0
               STA    $E7
               LDA    $E8
               ADC    #$00
               STA    $E8
               JSR    SUB7921
               LDY    #$00
               LDA    ($1B),Y
               INC
               STA    D7088
               INY
               INY
               INY
               STA    ($1B),Y
               DEY
               DEY
               LDA    ($1B),Y
               STA    D7089
               INY
               INY
               INY
               STA    ($1B),Y
               BRA    L7920
L78CB          CLC
               LDA    $E7
               ADC    #$40
               STA    $E7
               LDA    $E8
               ADC    #$01
               STA    $E8
               JSR    SUB7921
               LDY    #$00
               LDA    ($1B),Y
               STA    D7088
               INY
               INY
               INY
               STA    ($1B),Y
               DEY
               DEY
               LDA    ($1B),Y
               INC
               STA    D7089
               INY
               INY
               INY
               STA    ($1B),Y
               BRA    L7920
L78F6          CLC
               LDA    $E7
               ADC    #$E0
               STA    $E7
               LDA    $E8
               ADC    #$01
               STA    $E8
               JSR    SUB7921
               LDY    #$00
               LDA    ($1B),Y
               INC
               STA    D7088
               INY
               INY
               INY
               STA    ($1B),Y
               DEY
               DEY
               LDA    ($1B),Y
               INC
               STA    D7089
               INY
               INY
               INY
               STA    ($1B),Y
L7920          RTS
SUB7921        JSR    SUB7990
               LDA    $E7
               STA    D7A27+1
               STA    D7A13+1
               LDA    $E8
               STA    D7A27+2
               STA    D7A13+2
               JSR    SUB7990
               LDA    $E7
               STA    D7A53+1
               STA    D7A39+1
               LDA    $E8
               STA    D7A53+2
               STA    D7A39+2
               RTS
SUB7948        JSR    SUB797B
               LDA    $E7
               ADC    #$F0
               STA    $E7
               LDA    $E8
               ADC    #$02
               STA    $E8
               LDA    $E7
               STA    D7A10+1
               STA    D7B00+1
               LDA    $E8
               STA    D7A10+2
               STA    D7B00+2
               JSR    SUB7990
               LDA    $E7
               STA    D7A36+1
               STA    D7B09+1
               LDA    $E8
               STA    D7A36+2
               STA    D7B09+2
               RTS
SUB797B        LDA    D7093
               DEC
               TAX
               LDA    D8D20,X
               CLC
               ADC    D7092
               STA    $E8
               STA    $1C
               STZ    $E7
               STZ    $1B
               RTS
SUB7990        CLC
               LDA    $E7
               ADC    #$50
               STA    $E7
               LDA    $E8
               ADC    #$00
               STA    $E8
               RTS
SUB799E        LDA    D7093
               CMP    #$0D
               BCS    L79AD
               LDA    $C083
               LDA    $C083
               BRA    L79B3
L79AD          LDA    $C08B
               LDA    $C08B
L79B3          JSR    SUB7948
               JSR    SUB785C
               JSR    SUB79C0
               LDA    $C082
               RTS
SUB79C0        LDA    D7087
               STA    $08
               STZ    $0A
               DEC    $0A
L79C9          LDX    $08
               CPX    #$18
               BCS    L79DC
               LDA    D7088
               INC
               LSR
               CLC
               ADC    $0A
               STA    $0A
               JMP    L7A6E
L79DC          CPX    #$30
               BCC    L79E3
               JMP    L7A6E
L79E3          TXA
               SEC
               SBC    #$18
               STA    $EB
               TAX
               LDA    D92D2,X
               STA    $06
D79EF          LDA    D8D00,X
               STA    $07
               LDA    D7086
               STA    $09
L79F9          INC    $0A
               LDY    $09
               CPY    #$28
               BCC    L7A60
               CPY    #$50
               BCS    L7A60
               TYA
               SEC
               SBC    #$28
               STA    $EA
               TAY
               LDA    ($06),Y
               LDY    $0A
D7A10          STA    $9420,Y
D7A13          LDA    $9420,Y
               TAX
               LDA    D9000,X
               LDY    $EA
               AND    ($06),Y
               STA    $FF
               LDA    D9000,X
               EOR    #$FF
               LDX    $0A
D7A27          AND    $9420,X
               ORA    $FF
               STA    ($06),Y
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
D7A36          STA    $9420,X
D7A39          LDA    $9420,X
               TAX
               LDA    D9100,X
               LDY    $EA
               STA    RAMRDON
               AND    ($06),Y
               STA    RAMRDOFF
               STA    $FF
               LDA    D9100,X
               EOR    #$FF
               LDX    $0A
D7A53          AND    $9420,X
               ORA    $FF
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
L7A60          INC    $09
               LDA    $09
               SEC
               SBC    D7086
               ASL
               CMP    D7088
               BCC    L79F9
L7A6E          INC    $08
               LDA    $08
               SEC
               SBC    D7087
               ASL
               CMP    D7089
               BCS    L7A7F
               JMP    L79C9
L7A7F          RTS
SUB7A80        LDA    D7093
               CMP    #$0D
               BCS    L7A8F
               LDA    $C083
               LDA    $C083
               BRA    L7A95
L7A8F          LDA    $C08B
               LDA    $C08B
L7A95          LDA    D7095
               LSR
               STA    D7087
               LDA    D7094
               LSR
               STA    D7086
               JSR    SUB7948
               LDY    #$00
               LDA    ($1B),Y
               STA    D7088
               INY
               LDA    ($1B),Y
               STA    D7089
               LDA    D7087
               STA    $08
               STZ    $0A
               DEC    $0A
L7ABC          LDX    $08
               CPX    #$18
               BCS    L7ACF
               LDA    D7088
               INC
               LSR
               CLC
               ADC    $0A
               STA    $0A
               JMP    L7B24
L7ACF          CPX    #$30
               BCC    L7AD6
               JMP    L7B24
L7AD6          TXA
               SEC
               SBC    #$18
               STA    $EB
               TAX
               LDA    D92D2,X
               STA    $06
D7AE2          LDA    D8D00,X
               STA    $07
               LDA    D7086
               STA    $09
L7AEC          INC    $0A
               LDY    $09
               CPY    #$28
               BCC    L7B16
               CPY    #$50
               BCS    L7B16
               TYA
               SEC
               SBC    #$28
               STA    $EA
               LDY    $0A
D7B00          LDA    $9420,Y
               LDY    $EA
               STA    ($06),Y
               LDY    $0A
D7B09          LDA    $9420,Y
               LDY    $EA
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
L7B16          INC    $09
               LDA    $09
               SEC
               SBC    D7086
               ASL
               CMP    D7088
               BCC    L7AEC
L7B24          INC    $08
               LDA    $08
               SEC
               SBC    D7087
               ASL
               CMP    D7089
               BCS    L7B35
               JMP    L7ABC
L7B35          STA    $C082
               RTS
SUB7B39        LDA    D7093
               CMP    #$0D
               BCS    L7B48
               LDA    $C083
               LDA    $C083
               BRA    L7B4E
L7B48          LDA    $C08B
               LDA    $C08B
L7B4E          LDA    #$03
               STA    $E9
               JSR    SUB84F8
               LDA    #$D0
               STA    D7092
               JSR    SUB797B
               LDA    #$00
               STA    $FE
               LDA    #$95
               STA    $FF
               LDY    #$00
               LDA    D7088
               STA    ($1B),Y
               INY
               LDA    D7089
               STA    ($1B),Y
               INY
               LDA    D708B
               STA    ($1B),Y
               LDA    #$00
               STA    D7C33+1
               STA    D7C2A+1
               JSR    SUB7C16
               JSR    SUB7BFB
               LDA    D7088
               STA    D7C88+1
               LDA    D7089
               STA    D7C91+1
               JSR    SUB7C55
               LDA    #$01
               STA    D7C33+1
               STZ    D7C2A+1
               JSR    SUB7C16
               JSR    SUB7BFB
               LDA    D7088
               INC
               STA    D7C88+1
               LDA    D7089
               STA    D7C91+1
               JSR    SUB7C55
               LDA    #$01
               STZ    D7C33+1
               STA    D7C2A+1
               JSR    SUB7C16
               JSR    SUB7BFB
               LDA    D7088
               STA    D7C88+1
               LDA    D7089
               INC
               STA    D7C91+1
               JSR    SUB7C55
               LDA    #$01
               STA    D7C33+1
               STA    D7C2A+1
               JSR    SUB7C16
               JSR    SUB7BFB
               LDA    D7088
               INC
               STA    D7C88+1
               LDA    D7089
               INC
               STA    D7C91+1
               JSR    SUB7C55
               LDA    #$01
               STA    $E9
               JSR    SUB84F8
               STA    $C082
               RTS
SUB7BFB        JSR    SUB7990
               LDA    $E7
               STA    D7C71+1
               LDA    $E8
               STA    D7C71+2
               JSR    SUB7990
               LDA    $E7
               STA    D7C80+1
               LDA    $E8
               STA    D7C80+2
               RTS
SUB7C16        LDX    D708B
               LDA    D8D50,X
               JSR    SUB86D6
               STZ    $09
               STZ    $08
               LDA    #$00
               STA    $0A
L7C27          LDA    $08
               CLC
D7C2A          ADC    #$00
               STA    $E1
               STZ    $09
L7C30          LDA    $09
               CLC
D7C33          ADC    #$00
               STA    $E0
               LDY    $0A
               LDA    ($FE),Y
               STA    $E3
               JSR    SUB886A
               INC    $0A
               INC    $09
               LDA    $09
               CMP    D7088
               BNE    L7C30
               INC    $08
               LDA    $08
               CMP    D7089
               BNE    L7C27
               RTS
SUB7C55        STZ    $08
               STZ    $0A
               DEC    $0A
L7C5B          LDX    $08
               LDA    D92D2,X
               STA    $06
D7C62          LDA    D8D00,X
               STA    $07
               STZ    $09
L7C69          INC    $0A
               LDY    $09
               LDA    ($06),Y
               LDY    $0A
D7C71          STA    $9420,Y
               LDY    $09
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               LDY    $0A
D7C80          STA    $9420,Y
               INC    $09
               LDA    $09
               ASL
D7C88          CMP    #$01
               BCC    L7C69
               INC    $08
               LDA    $08
               ASL
D7C91          CMP    #$01
               BCC    L7C5B
               RTS
SUB7C96        STA    KEYBD
               LDA    $09
               STA    $E1
               LDA    $1F
               STA    $E8
               JSR    SUB7CF8
               JSR    SUB7DA2
               LDA    $E0
               LDX    $E7
               STA    $E7
               STX    $E0
               JSR    SUB7DA2
               LDA    $1F
               STA    $E1
               JSR    SUB7CF8
               RTS
SUB7CBA        LDA    $E0
D7CBC          NOP
               CMP    $E7
               BCC    L7CCB
               BEQ    L7CF7
               LDX    $E7
               STA    D7081
               STX    D7080
L7CCB          LDA    $E0
               BPL    L7CD3
               STZ    $E0
               BRA    L7CDB
L7CD3          CMP    #$50
               BCC    L7CDB
               LDA    #$4F
               STA    $E0
L7CDB          LDA    $E7
               BPL    L7CE3
               STZ    $E7
               BRA    L7CEB
L7CE3          CMP    #$50
               BCC    L7CEB
               LDA    #$4F
               STA    $E7
L7CEB          LDA    $E1
               BPL    L7CF0
               RTS
L7CF0          CMP    D7082
               BEQ    SUB7CF8
               BCC    SUB7CF8
L7CF7          RTS
SUB7CF8        STA    KEYBD
               LDA    $E0
               CMP    $E7
               BCC    L7D10
               BEQ    L7D0D
               LDX    $E7
               STA    D7081
               STX    D7080
               BRA    L7D18
L7D0D          JMP    SUB886A
L7D10          STA    D7080
               LDA    $E7
               STA    D7081
L7D18          SEC
               SBC    D7080
               INC
               STA    D7069
               INC    D7081
               LDA    $E1
               LSR
               TAX
               LDA    D92D2,X
               STA    $06
D7D2C          LDA    D8D00,X
               STA    $07
               LDA    $E1
               BIT    #$01
               BEQ    L7D3A
               JMP    L7D4E
L7D3A          LDA    $E3
               STA    $E4
               TAX
               LDA    D8E00,X
               STA    $E5
               LDA    #$F0
               STA    D7D74+1
               STA    D7D90+1
               BRA    L7D63
L7D4E          LDX    $E3
               LDA    D8D40,X
               STA    $E4
               TAX
               LDA    D8E00,X
               STA    $E5
               LDA    #$0F
               STA    D7D74+1
               STA    D7D90+1
L7D63          LDA    D7080
               BIT    #$01
               BNE    L7D8C
               LSR
               TAY
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
D7D74          AND    #$F0
               ORA    $E5
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               INC    D7080
               LDA    D7080
               CMP    D7081
               BCC    L7D63
               RTS
L7D8C          LSR
               TAY
               LDA    ($06),Y
D7D90          AND    #$F0
               ORA    $E4
               STA    ($06),Y
               INC    D7080
               LDA    D7080
               CMP    D7081
               BCC    L7D63
               RTS
SUB7DA2        STA    KEYBD
               LDA    $E1
               CMP    $E8
               BCC    L7DB8
               BEQ    L7DB5
               LDX    $E8
               STA    $E8
               STX    $E1
               BRA    L7DB8
L7DB5          JMP    SUB886A
L7DB8          LDA    $E8
               SEC
               SBC    $E1
               INC
               STA    D7069
               LDA    $E0
               BIT    #$01
               BEQ    L7DCA
               JMP    L7E6E
L7DCA          LSR
               TAY
               LDA    $E1
               LSR
               STA    D706A
               LDA    $E1
               BIT    #$01
               BEQ    L7E0E
               LDX    D706A
               LDA    D92D2,X
               STA    $06
D7DE0          LDA    D8D00,X
               STA    $07
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               TAX
               LDA    D8F00,X
               AND    #$0F
               STA    $E5
               LDX    $E3
               LDA    D8D40,X
               ORA    $E5
               TAX
               LDA    D8E00,X
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               INC    D706A
               DEC    D7069
L7E0E          LDA    D7069
               CMP    #$02
               BCC    L7E3E
               LDX    D706A
               LDA    D92D2,X
               STA    $06
D7E1D          LDA    D8D00,X
               STA    $07
               LDX    $E3
               LDA    D8D50,X
               TAX
               LDA    D8E00,X
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               DEC    D7069
               DEC    D7069
               INC    D706A
               BRA    L7E0E
L7E3E          LDA    D7069
               BNE    L7E44
               RTS
L7E44          LDX    D706A
               LDA    D92D2,X
               STA    $06
D7E4C          LDA    D8D00,X
               STA    $07
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               TAX
               LDA    D8F00,X
               AND    #$F0
               ORA    $E3
               TAX
               LDA    D8E00,X
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               RTS
L7E6E          LSR
               TAY
               LDA    $E1
               LSR
               STA    D706A
               LDA    $E1
               BIT    #$01
               BEQ    L7E9E
               LDX    D706A
               LDA    D92D2,X
               STA    $06
D7E84          LDA    D8D00,X
               STA    $07
               LDA    ($06),Y
               AND    #$0F
               STA    $E5
               LDX    $E3
               LDA    D8D40,X
               ORA    $E5
               STA    ($06),Y
               INC    D706A
               DEC    D7069
L7E9E          LDA    D7069
               CMP    #$02
               BCC    L7EC4
               LDX    D706A
               LDA    D92D2,X
               STA    $06
D7EAD          LDA    D8D00,X
               STA    $07
               LDX    $E3
               LDA    D8D50,X
               STA    ($06),Y
               DEC    D7069
               DEC    D7069
               INC    D706A
               BRA    L7E9E
L7EC4          LDA    D7069
               BNE    L7ECA
               RTS
L7ECA          LDX    D706A
               LDA    D92D2,X
               STA    $06
D7ED2          LDA    D8D00,X
               STA    $07
               LDA    ($06),Y
               AND    #$F0
               ORA    $E3
               STA    ($06),Y
               RTS
SUB7EE0        STA    KEYBD
               LDA    $E0
               CMP    $E7
               BCC    L7EF9
               LDX    $E7
               STA    $E7
               STX    $E0
               LDA    $E1
               LDX    $E8
               STA    $E8
               STX    $E1
               BRA    L7F0D
L7EF9          LDA    $E1
               CMP    $E8
               BCC    L7F0D
               LDX    $E8
               STA    $E8
               STX    $E1
               LDX    $E7
               LDA    $E0
               STA    $E7
               STX    $E0
L7F0D          LDA    $E0
               SEC
               SBC    $E7
               BEQ    L7F2C
               BCS    L7F34
               EOR    #$FF
               INC
               STA    D7070
               LDA    $E0
               STA    D706D
               LDA    $E1
               STA    D706F
               SEC
               SBC    $E8
               JMP    L7F44
L7F2C          JSR    SUB7DA2
               RTS
L7F30          JSR    SUB7CF8
               RTS
L7F34          STA    D7070
               LDA    $E7
               STA    D706D
               LDA    $E8
               STA    D706F
               SEC
               SBC    $E1
L7F44          BCS    L7F51
               EOR    #$FF
               ADC    #$01
               STA    D7072
               LDA    #$EE
               BNE    L7F58
L7F51          BEQ    L7F30
               STA    D7072
               LDA    #$CE
L7F58          STA    D7F9B
               STA    D7FD0
               LDA    D7070
               CMP    D7072
               BCS    L7F69
               JMP    L7FA0
L7F69          INC
               STA    $E6
               DEC
               LSR
               STA    D7075
               JMP    L7F7C
L7F74          RTS
L7F75          STA    D7075
L7F78          DEC    $E6
               BEQ    L7F74
L7F7C          LDA    D706D
               STA    $E0
               LDA    D706F
               STA    $E1
               JSR    SUB886A
               INC    D706D
               LDA    D7075
               SEC
               SBC    D7072
               BCS    L7F75
               ADC    D7070
               STA    D7075
D7F9B          INC    D706F
               BRA    L7F78
L7FA0          LDX    $E1
               CPX    D706F
               BNE    L7FA9
               LDX    $E8
L7FA9          STX    D7FCC+1
               LDA    D7072
               LSR
               STA    D7075
               LDX    D706F
               JMP    L7FBC
L7FB9          STA    D7075
L7FBC          LDA    D706D
               STA    $E0
               LDA    D706F
               STA    $E1
               JSR    SUB886A
               LDA    D706F
D7FCC          CMP    #$00
               BEQ    L7FE7
D7FD0          INC    D706F
               LDA    D7075
               SEC
               SBC    D7070
               BCS    L7FB9
               ADC    D7072
               STA    D7075
               INC    D706D
               BNE    L7FBC
L7FE7          RTS
SUB7FE8        STA    KEYBD
               LDA    D707A
               STA    D7079
               STA    $EE
               STZ    $EF
               JSR    SUB80A7
L7FF8          LDA    $EF
               CMP    $EE
               BCC    L7FFF
               RTS
L7FFF          LDA    $EF
               ASL
               ADC    #$01
               STA    D7078
               INC    $EF
               LDA    D7078
               EOR    #$FF
               CLC
               ADC    #$01
               ADC    D7079
               STA    D7079
               BPL    L8034
               LDA    $EE
               ASL
               EOR    #$FF
               CLC
               ADC    #$02
               STA    D7077
               DEC    $EE
               LDA    D7077
               EOR    #$FF
               CLC
               ADC    #$01
               ADC    D7079
               STA    D7079
L8034          LDA    $EE
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
               JSR    SUB8855
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB8855
               CLC
               LDA    $ED
               ADC    $EB
               STA    $E1
               JSR    SUB8855
               CLC
               LDA    $EC
               ADC    $EE
               STA    $E0
               JSR    SUB8855
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB8855
               CLC
               LDA    $EC
               ADC    $EB
               STA    $E0
               JSR    SUB8855
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB8855
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               JSR    SUB8855
               JMP    L7FF8
SUB80A7        LDA    $EE
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
               JSR    SUB8855
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB8855
               LDA    $EC
               STA    $E0
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB8855
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB8855
               RTS
SUB80EA        STA    KEYBD
               LDA    D707A
               STA    D7079
               STA    $EE
               STZ    $EF
               JSR    SUB81C1
L80FA          LDA    $EF
               CMP    $EE
               BCC    L8101
               RTS
L8101          LDA    $EF
               ASL
               ADC    #$01
               STA    D7078
               INC    $EF
               LDA    D7078
               EOR    #$FF
               CLC
               ADC    #$01
               ADC    D7079
               STA    D7079
               BPL    L8136
               LDA    $EE
               ASL
               EOR    #$FF
               CLC
               ADC    #$02
               STA    D7077
               DEC    $EE
               LDA    D7077
               EOR    #$FF
               CLC
               ADC    #$01
               ADC    D7079
               STA    D7079
L8136          LDA    $EE
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
               JSR    SUB8855
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB8855
               JSR    SUB7CBA
               LDA    $E0
               STA    $E7
               CLC
               LDA    $ED
               ADC    $EB
               STA    $E1
               JSR    SUB8855
               CLC
               LDA    $EC
               ADC    $EE
               STA    $E0
               JSR    SUB8855
               JSR    SUB7CBA
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               STA    $E7
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB8855
               CLC
               LDA    $EC
               ADC    $EB
               STA    $E0
               JSR    SUB8855
               JSR    SUB7CBA
               LDA    $E0
               STA    $E7
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB8855
               CLC
               LDA    $EC
               ADC    $EF
               STA    $E0
               JSR    SUB8855
               JSR    SUB7CBA
               JMP    L80FA
SUB81C1        LDA    $EE
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
               JSR    SUB8855
               CLC
               LDA    $EC
               ADC    $EA
               STA    $E0
               JSR    SUB8855
               JSR    SUB7CBA
               LDA    $EC
               STA    $E0
               CLC
               LDA    $ED
               ADC    $EE
               STA    $E1
               JSR    SUB8855
               CLC
               LDA    $ED
               ADC    $EA
               STA    $E1
               JSR    SUB8855
               RTS
SUB8209        STA    KEYBD
               LDA    $E1
               LDX    $E8
               CMP    $E8
               BCC    L821A
               STA    $E8
               STX    $E1
               BRA    L821A
L821A          INC    $E8
               LDA    $E1
L821E          STA    $E1
               JSR    SUB7CF8
               INC    $E1
               LDA    $E1
               CMP    $E8
               BCC    L821E
               RTS
SUB822C        STA    KEYBD
               LDA    D7083
               CMP    D7084
               BNE    L8238
               RTS
L8238          CMP    #$01
               BNE    L825E
               LDX    #$04
               STX    L835C+2
               STX    L837F+2
               LDX    #$05
               STX    D8362+2
               STX    D8385+2
               LDX    #$06
               STX    D8368+2
               STX    D838B+2
               LDX    #$07
               STX    D836E+2
               STX    D8391+2
               BRA    L82AB
L825E          CMP    #$02
               BNE    L8284
               LDX    #$08
               STX    L835C+2
               STX    L837F+2
               LDX    #$09
               STX    D8362+2
               STX    D8385+2
               LDX    #$0A
               STX    D8368+2
               STX    D838B+2
               LDX    #$0B
               STX    D836E+2
               STX    D8391+2
               BRA    L82AB
L8284          CMP    #$03
               BNE    L82AA
               LDX    #$0C
               STX    L835C+2
               STX    L837F+2
               LDX    #$0D
               STX    D8362+2
               STX    D8385+2
               LDX    #$0E
               STX    D8368+2
               STX    D838B+2
               LDX    #$0F
               STX    D836E+2
               STX    D8391+2
               BRA    L82AB
L82AA          RTS
L82AB          LDA    D7084
               CMP    #$01
               BNE    L82D4
               LDX    #$04
               STX    D835F+2
               STX    D8382+2
               LDX    #$05
               STX    D8365+2
               STX    D8388+2
               LDX    #$06
               STX    D836B+2
               STX    D838E+2
               LDX    #$07
               STX    D8371+2
               STX    D8394+2
               BRA    L8321
L82D4          CMP    #$02
               BNE    L82FA
               LDX    #$08
               STX    D835F+2
               STX    D8382+2
               LDX    #$09
               STX    D8365+2
               STX    D8388+2
               LDX    #$0A
               STX    D836B+2
               STX    D838E+2
               LDX    #$0B
               STX    D8371+2
               STX    D8394+2
               BRA    L8321
L82FA          CMP    #$03
               BNE    L8320
               LDX    #$0C
               STX    D835F+2
               STX    D8382+2
               LDX    #$0D
               STX    D8365+2
               STX    D8388+2
               LDX    #$0E
               STX    D836B+2
               STX    D838E+2
               LDX    #$0F
               STX    D8371+2
               STX    D8394+2
               BRA    L8321
L8320          RTS
L8321          JSR    SUB83D5
               STA    RAMWRTON
               LDA    L835C+2
               STA    L835C+2
               LDA    D835F+2
               STA    D835F+2
               LDA    D8362+2
               STA    D8362+2
               LDA    D8365+2
               STA    D8365+2
               LDA    D8368+2
               STA    D8368+2
               LDA    D836B+2
               STA    D836B+2
               LDA    D836E+2
               STA    D836E+2
               LDA    D8371+2
               STA    D8371+2
               STA    RAMRDON
               LDX    #$00
L835C          LDA    $0400,X
D835F          STA    $1000,X
D8362          LDA    $0500,X
D8365          STA    $1100,X
D8368          LDA    $0600,X
D836B          STA    $1200,X
D836E          LDA    $0700,X
D8371          STA    $1300,X
               INX
               BNE    L835C
               STA    RAMWRTOFF
               STA    RAMRDOFF
               LDX    #$00
L837F          LDA    $0400,X
D8382          STA    $0C00,X
D8385          LDA    $0500,X
D8388          STA    $0D00,X
D838B          LDA    $0600,X
D838E          STA    $0E00,X
D8391          LDA    $0700,X
D8394          STA    $0F00,X
               INX
               BNE    L837F
               JSR    SUB8430
               RTS
SUB839E        JSR    SUB83D5
               STA    RAMRDON
               STA    RAMWRTON
               LDA    #$A0
               LDX    #$00
L83AB          STA    $0400,X
               STA    $0500,X
               STA    $0600,X
               STA    $0700,X
               INX
               BNE    L83AB
               STA    RAMWRTOFF
               STA    RAMRDOFF
               LDX    #$00
L83C2          STA    $0400,X
               STA    $0500,X
               STA    $0600,X
               STA    $0700,X
               INX
               BNE    L83C2
               JSR    SUB8430
               RTS
SUB83D5        LDA    $0478
               STA    $9420
               LDA    $04F8
               STA    $9421
               LDA    $0578
               STA    $9422
               LDA    $05F8
               STA    $9423
               LDA    $047C
               STA    $9424
               LDA    $04FC
               STA    $9425
               LDA    $057C
               STA    $9426
               LDA    $05FC
               STA    $9427
               LDA    $067C
               STA    $9428
               LDA    $06FC
               STA    $9429
               LDA    $077C
               STA    $942A
               LDA    $0678
               STA    $942B
               LDA    $06F8
               STA    $942C
               LDA    $047E
               STA    $942D
               LDA    $04FE
               STA    $942E
               RTS
SUB8430        LDA    $9420
               STA    $0478
               LDA    $9421
               STA    $04F8
               LDA    $9422
               STA    $0578
               LDA    $9423
               STA    $05F8
               LDA    $9424
               STA    $047C
               LDA    $9425
               STA    $04FC
               LDA    $9426
               STA    $057C
               LDA    $9427
               STA    $05FC
               LDA    $9428
               STA    $067C
               LDA    $9429
               STA    $06FC
               LDA    $942A
               STA    $077C
               LDA    $942B
               STA    $0678
               LDA    $942C
               STA    $06F8
               LDA    $942D
               STA    $047E
               LDA    $942E
               STA    $04FE
               RTS
L848B          LDX    #$BA
               LDY    #$8B
               JSR    SUB84B2
               JSR    SUB84AC
               LDX    #$DF
               LDY    #$8B
               JSR    SUB84B2
               JSR    SUB84AC
               LDX    #$06
               LDY    #$8C
               JSR    SUB84B2
               JSR    SUB84AC
               JMP    L777B
SUB84AC        LDA    #$8D
               JSR    COUT
               RTS
SUB84B2        STX    L84BA+1
               STY    L84BA+2
               LDX    #$00
L84BA          LDA    $1000,X
               BEQ    L84C5
               JSR    COUT
               INX
               BNE    L84BA
L84C5          RTS
SUB84C6        LDA    D7082
               CMP    #$2F
               BEQ    L84DA
               LDA    MIXCLR
               LDA    #$2F
               STA    D7082
               STZ    $22
               JMP    L777B
L84DA          LDA    MIXSET
               LDA    #$A0
               JSR    SUB9200
               JSR    SUB9229
               LDA    #$27
               STA    D7082
               LDA    #$50
               STA    $21
               LDA    #$14
               STA    $22
               LDA    #$14
               JSR    $FB5B
               RTS
SUB84F8        LDA    $E9
               CMP    #$02
               BCS    L8507
               LDA    #$01
               STA    D7068
               LDA    #$8D
               BRA    L851B
L8507          CMP    #$03
               BEQ    L8514
               LDA    #$02
               STA    D7068
               LDA    #$93
               BRA    L851B
L8514          LDA    #$03
               STA    D7068
               LDA    #$94
L851B          STA    D7D2C+2
               STA    D7DE0+2
               STA    D7E1D+2
               STA    D7E4C+2
               STA    D7E84+2
               STA    D7EAD+2
               STA    D7ED2+2
               STA    D8804+2
               STA    D8877+2
               STA    D79EF+2
               STA    D7AE2+2
               STA    D7C62+2
               RTS
SUB8540        CMP    RDVBL
               BPL    SUB8540
L8545          CMP    RDVBL
               BMI    L8545
               STA    KEYBD
               LDA    $E9
               CMP    #$02
               BEQ    L8558
               LDA    LOWSCR
               BRA    L855B
L8558          LDA    HISCR
L855B          RTS
SUB855C        STA    KEYBD
               LDA    D7068
               CMP    #$03
               BNE    L858F
               LDX    #$00
               LDA    #$00
L856A          STA    $0C00,X
               STA    $0D00,X
               STA    $0E00,X
               STA    $0F00,X
               INX
               BNE    L856A
               STA    RAMWRTON
L857C          STA    $0C00,X
               STA    $0D00,X
               STA    $0E00,X
               STA    $0F00,X
               INX
               BNE    L857C
               STA    RAMWRTOFF
               RTS
L858F          LDX    $E3
               LDA    D8D50,X
               TAY
               LDA    D7068
               CMP    #$02
               BEQ    L85AC
               TYA
               JSR    SUB85BC
               LDA    D7082
               CMP    #$27
               BEQ    L85AB
               TYA
               JSR    SUB9252
L85AB          RTS
L85AC          TYA
               JSR    SUB8649
               LDA    D7082
               CMP    #$27
               BEQ    L85BB
               TYA
               JSR    SUB927F
L85BB          RTS
SUB85BC        LDX    #$28
L85BE          DEX
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
               BNE    L85BE
               TAX
               LDA    D8E00,X
               LDX    #$28
L8603          DEX
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
               BNE    L8603
               RTS
SUB8649        LDX    #$28
L864B          DEX
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
               BNE    L864B
               TAX
               LDA    D8E00,X
               LDX    #$28
L8690          DEX
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
               BNE    L8690
               RTS
SUB86D6        LDX    #$28
L86D8          DEX
               STA    $0C00,X
               STA    $0C80,X
               STA    $0D00,X
               STA    $0D80,X
               STA    $0E00,X
               STA    $0E80,X
               STA    $0F00,X
               STA    $0F80,X
               STA    $0C28,X
               STA    $0CA8,X
               STA    $0D28,X
               STA    $0DA8,X
               STA    $0E28,X
               STA    $0EA8,X
               STA    $0F28,X
               STA    $0FA8,X
               STA    $0C50,X
               STA    $0CD0,X
               STA    $0D50,X
               STA    $0DD0,X
               STA    $0E50,X
               STA    $0ED0,X
               STA    $0F50,X
               STA    $0FD0,X
               BNE    L86D8
               TAX
               LDA    D8E00,X
               LDX    #$28
L8729          DEX
               STA    RAMWRTON
               STA    $0C00,X
               STA    $0C80,X
               STA    $0D00,X
               STA    $0D80,X
               STA    $0E00,X
               STA    $0E80,X
               STA    $0F00,X
               STA    $0F80,X
               STA    $0C28,X
               STA    $0CA8,X
               STA    $0D28,X
               STA    $0DA8,X
               STA    $0E28,X
               STA    $0EA8,X
               STA    $0F28,X
               STA    $0FA8,X
               STA    $0C50,X
               STA    $0CD0,X
               STA    $0D50,X
               STA    $0DD0,X
               STA    $0E50,X
               STA    $0ED0,X
               STA    $0F50,X
               STA    $0FD0,X
               STA    RAMWRTOFF
               BNE    L8729
               RTS
SUB877B        LDA    STROBE
               JSR    $C300
               LDA    TXTCLR
               STA    SET80VID
               LDA    AN3OFF
               STA    MIXCLR
               STA    KEYBD
               LDA    LOWSCR
               LDA    #$00
               JSR    SUB85BC
               JSR    SUB9200
               JSR    SUB8649
               JSR    SUB9229
               LDA    #$01
               STA    D7068
               LDA    #$2F
               STA    D7082
               LDA    #$F0
               STA    $36
               LDA    #$FD
               STA    $37
               JSR    $03EA
               RTS
SUB87B7        LDA    STROBE
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
SUB87D5        LDA    #$00
               STA    D706C
               STA    D706B
               STA    $3C
               LDA    #$70
               STA    $3D
               LDA    #$FF
               STA    $3E
               LDA    #$9F
               STA    $3F
               LDA    #$00
               STA    $42
               LDA    #$70
               STA    $43
               SEC
               JMP    $C311
               HEX    60
SUB87F8        STA    KEYBD
               LDA    $E1
               LSR
               TAX
               LDA    D92D2,X
               STA    $06
D8804          LDA    D8D00,X
               STA    $07
               LDA    $E0
               BIT    #$01
               BNE    L8837
               LSR
               TAY
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               TAX
               LDA    D8F00,X
               STA    $E9
               LDA    $E1
               AND    #$01
               BEQ    L8830
               LDA    $E9
               AND    #$F0
               LSR
               LSR
               LSR
               LSR
               STA    $E9
               RTS
L8830          LDA    $E9
               AND    #$0F
               STA    $E9
               RTS
L8837          LSR
               TAY
               LDA    ($06),Y
               STA    $E9
               LDA    $E1
               AND    #$01
               BEQ    L884E
               LDA    $E9
               AND    #$F0
               LSR
               LSR
               LSR
               LSR
               STA    $E9
               RTS
L884E          LDA    $E9
               AND    #$0F
               STA    $E9
               RTS
SUB8855        STA    KEYBD
SUB8858        LDA    $E0
               NOP
               CMP    #$50
               BCC    L8860
               RTS
L8860          LDA    $E1
               CMP    D7082
               BEQ    SUB886A
               BCC    SUB886A
               RTS
SUB886A        LDA    $E3
               STA    $E4
               LDA    $E1
               LSR
               TAX
               LDA    D92D2,X
               STA    $06
D8877          LDA    D8D00,X
               STA    $07
               LDX    $E3
               LDA    $E0
               BIT    #$01
               BNE    L88BF
               LSR
               TAY
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               STA    $E5
               LDA    D8E00,X
               STA    $E4
               LDA    $E1
               AND    #$01
               BEQ    L88AC
               LDA    $E5
               AND    #$0F
               STA    $E5
               LDA    D8D40,X
               TAX
               LDA    D8E00,X
               STA    $E4
               BRA    L88B2
L88AC          LDA    $E5
               AND    #$F0
               STA    $E5
L88B2          LDA    $E4
               ORA    $E5
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               RTS
L88BF          LSR
               TAY
               LDA    ($06),Y
               STA    $E5
               LDA    $E1
               AND    #$01
               BEQ    L88D8
               LDA    $E5
               AND    #$0F
               STA    $E5
               LDA    D8D40,X
               STA    $E4
               BRA    L88DE
L88D8          LDA    $E5
               AND    #$F0
               STA    $E5
L88DE          LDA    $E4
               ORA    $E5
               STA    ($06),Y
               RTS
SUB88E5        STA    RAMRDON
               STA    RAMWRTOFF
               LDX    #$00
L88ED          LDA    $A000,X
               STA    $0400,X
               LDA    $A100,X
               STA    $0500,X
               LDA    $A200,X
               STA    $0600,X
               LDA    $A300,X
               STA    $0700,X
               INX
               BNE    L88ED
               STA    RAMWRTON
               LDX    #$00
L890D          LDA    $A400,X
               STA    $0400,X
               LDA    $A500,X
               STA    $0500,X
               LDA    $A600,X
               STA    $0600,X
               LDA    $A700,X
               STA    $0700,X
               INX
               BNE    L890D
               STA    RAMWRTOFF
               STA    RAMRDOFF
               RTS
SUB892F        STA    KEYBD
               STA    RAMWRTON
               LDX    #$00
L8937          TXA
               STZ    $FE
               CLC
               ADC    #$10
               STA    $FF
               LDA    #$00
               LDY    #$00
L8943          STA    ($FE),Y
               INY
               CPY    #$50
               BCC    L8943
               INX
               CPX    #$30
               BCC    L8937
               STA    RAMWRTOFF
               STZ    $FE
               LDA    #$40
               STA    $FF
               LDA    D708E
               SEC
               SBC    D708D
               STA    D7096
               INC    D7096
               LDA    D7090
               SEC
               SBC    D708F
               STA    D7097
               INC    D7097
               LDX    #$00
L8974          TXA
               CLC
               ADC    #$10
               STA    $FF
               LDY    #$00
L897C          TYA
               CLC
               ADC    D708D
               STA    $E0
               TXA
               CLC
               ADC    D708F
               STA    $E1
               PHX
               PHY
               JSR    SUB87F8
               LDA    $E9
               PLY
               PLX
               STA    RAMWRTON
               STA    ($FE),Y
               STA    RAMWRTOFF
               INY
               CPY    D7096
               BCC    L897C
               INX
               CPX    D7097
               BCC    L8974
               RTS
SUB89A8        STA    KEYBD
               STA    RAMRDOFF
               STA    RAMWRTON
               LDX    #$00
L89B3          LDA    $0400,X
               STA    $A000,X
               LDA    $0500,X
               STA    $A100,X
               LDA    $0600,X
               STA    $A200,X
               LDA    $0700,X
               STA    $A300,X
               INX
               BNE    L89B3
               STA    RAMRDON
               LDX    #$00
L89D3          LDA    $0400,X
               STA    $A400,X
               LDA    $0500,X
               STA    $A500,X
               LDA    $0600,X
               STA    $A600,X
               LDA    $0700,X
               STA    $A700,X
               INX
               BNE    L89D3
               STA    RAMWRTOFF
               STA    RAMRDOFF
               LDX    #$00
L89F6          TXA
               CLC
               ADC    #$10
               STA    $FF
               LDY    #$00
L89FE          STA    RAMRDON
               LDA    ($FE),Y
               STA    RAMRDOFF
               STA    $E3
               TYA
               CLC
               ADC    D7098
               STA    $E0
               TXA
               CLC
               ADC    D7099
               STA    $E1
               PHX
               PHY
               JSR    SUB8858
               PLY
               PLX
               INY
               CPY    D7096
               BCC    L89FE
               INX
               CPX    D7097
               BCC    L89F6
               RTS
SUB8A2A        STA    KEYBD
               STA    RAMWRTON
               LDX    #$00
L8A32          TXA
               STZ    $FE
               CLC
               ADC    #$10
               STA    $FF
               LDA    #$00
               LDY    #$00
L8A3E          STA    ($FE),Y
               INY
               CPY    #$50
               BCC    L8A3E
               INX
               CPX    #$30
               BCC    L8A32
               STA    RAMWRTOFF
               STZ    $FE
               LDA    #$40
               STA    $FF
               LDA    D707E
               STA    $E0
               LDA    D707F
               STA    $E1
               JSR    SUB87F8
               LDA    $E9
               STA    D707C
               LDY    #$00
               LDA    D707E
               STA    RAMWRTON
               STA    ($FE),Y
               INY
               LDA    D707F
               STA    ($FE),Y
               STA    RAMWRTOFF
               CLC
               LDA    $FE
               ADC    #$02
               STA    $FE
               LDA    $FF
               ADC    #$00
               STA    $FF
L8A85          LDA    $FE
               BNE    L8A90
               LDA    $FF
               CMP    #$40
               BNE    L8A90
               RTS
L8A90          SEC
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
               BNE    L8A85
               JSR    SUB886A
               LDA    #$02
               STA    RAMWRTON
               STA    ($EA)
               STA    RAMWRTOFF
               LDA    $09
               CMP    D7082
               BCS    L8B10
               INC
               STA    $E1
               LDA    $08
               STA    $E0
               JSR    SUB87F8
               LDA    $E9
               CMP    D707C
               BNE    L8B10
               CMP    $E3
               BEQ    L8B10
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
L8B10          LDA    $09
               BEQ    L8B47
               DEC
               STA    $E1
               LDA    $08
               STA    $E0
               JSR    SUB87F8
               LDA    $E9
               CMP    D707C
               BNE    L8B47
               CMP    $E3
               BEQ    L8B47
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
L8B47          LDA    $08
               CMP    #$4F
               BCS    L8B80
               INC
               STA    $E0
               LDA    $09
               STA    $E1
               JSR    SUB87F8
               LDA    $E9
               CMP    D707C
               BNE    L8B80
               CMP    $E3
               BEQ    L8B80
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
L8B80          LDA    $08
               BEQ    L8BB7
               DEC
               STA    $E0
               LDA    $09
               STA    $E1
               JSR    SUB87F8
               LDA    $E9
               CMP    D707C
               BNE    L8BB7
               CMP    $E3
               BEQ    L8BB7
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
L8BB7          JMP    L8A85
               HEX    C4CFCCCFD2C5D3A0D6B1B2AEB2A0E2F9
               HEX    A0B8ADC2C9D4ADD3C8C1C3CBA0B0B2AF
               HEX    B2B0B2B200D4E8F8A0F4EFBAA0D2EFE2
               ASC    "y Sherman, Daniel Henderson"
               HEX    00E1EEE4A0C6F2E1EEE3EFE9F3A0D6E1
               ASC    "nder Linden for support!"
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
               HEX    00000000000000000000000000000000
               HEX    000000
D8D00          HEX    04040505060607070404050506060707
               HEX    04040505060607070404050506060707
D8D20          HEX    0004080C1014181C2024282C0004080C
               HEX    5054585C6064686C7074787C8084888C
D8D40          HEX    00102030405060708090A0B0C0D0E0F0
D8D50          HEX    00112233445566778899AABBCCDDEEFF
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
D8E00          HEX    00080109020A030B040C050D060E070F
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
D8F00          HEX    00020406080A0C0E01030507090B0D0F
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
D9000          HEX    FFF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
D9100          HEX    FFF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
               HEX    0F000000000000000000000000000000
SUB9200        LDX    #$28
L9202          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L9202
               LDX    #$28
L9213          DEX
               STA    RAMWRTON
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    RAMWRTOFF
               BNE    L9213
               RTS
SUB9229        LDX    #$28
L922B          DEX
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               BNE    L922B
               LDX    #$28
L923C          DEX
               STA    RAMWRTON
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               STA    RAMWRTOFF
               BNE    L923C
               RTS
SUB9252        LDX    #$28
L9254          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L9254
               TAX
               LDA    D8E00,X
               LDX    #$28
L9269          DEX
               STA    RAMWRTON
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    RAMWRTOFF
               BNE    L9269
               RTS
SUB927F        LDX    #$28
L9281          DEX
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               BNE    L9281
               TAX
               LDA    D8E00,X
               LDX    #$28
L9296          DEX
               STA    RAMWRTON
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               STA    RAMWRTOFF
               BNE    L9296
               RTS
               HEX    A200A9009D000C9D000D9D000E9D000F
               HEX    8D05C09D000C9D000D9D000E9D000F8D
               HEX    04C0E8D0DF60
D92D2          HEX    008000800080008028A828A828A828A8
               HEX    50D050D050D050D078F878F878F878F8
               HEX    00000000000000000000000000000808
               HEX    09090A0A0B0B080809090A0A0B0B0808
               HEX    09090A0A0B0B080809090A0A0B0B0000
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
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000C0C
               HEX    0D0D0E0E0F0F0C0C0D0D0E0E0F0F0C0C
               HEX    0D0D0E0E0F0F0C0C0D0D0E0E0F0F

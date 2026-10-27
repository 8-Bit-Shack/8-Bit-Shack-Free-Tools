************************************************************
* ffedit - FRED (disassembly)
*
* Disassembled from the original binary (12510 bytes, $6000-$90DD).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../../README.txt for attribution and terms.
* Load address: $6000. Entry point(s): $6000, $8FB6, $8FC0 (65C02 code allowed: XC).
************************************************************

               XC
               ORG    $6000

KEYBD          EQU    $C000
RAMRDOFF       EQU    $C002
RAMRDON        EQU    $C003
RAMWRTOFF      EQU    $C004
RAMWRTON       EQU    $C005
ALTZPOFF       EQU    $C008
CLR80VID       EQU    $C00C
SET80VID       EQU    $C00D
STROBE         EQU    $C010
RDVBL          EQU    $C019
SPKR           EQU    $C030
TXTCLR         EQU    $C050
TXTSET         EQU    $C051
MIXCLR         EQU    $C052
MIXSET         EQU    $C053
LOWSCR         EQU    $C054
AN1OFF         EQU    $C05A
AN2OFF         EQU    $C05C
AN3OFF         EQU    $C05E
AN3ON          EQU    $C05F
VTABZ          EQU    $FC24
HOME           EQU    $FC58
WAIT           EQU    $FCA8
CROUT          EQU    $FD8E
COUT           EQU    $FDED

START          JSR    SUB8133
               LDA    #$00
               STA    $02
               LDA    #$95
               STA    $03
               JSR    SUB8560
               JSR    SUB8EB3
               JSR    SUB8EFB
               JSR    SUB8F0A
               JSR    SUB8F4D
               JSR    SUB8D18
               LDA    $0310
               STA    D7BAF
               BEQ    L602E
               JSR    SUB8D4F
               JSR    SUB8E50
               LDA    STROBE
L602E          JSR    SUB80E9
               STZ    $53
               STZ    D7B90
               JMP    L721B
SUB6039        LDA    #$00
               JSR    SUB606A
               LDA    #$01
SUB6040        STY    $7E
               ASL
               TAY
               LDA    $5069,Y
               STA    $79
               LDA    $506A,Y
               ADC    #$50
               STA    $7A
               LDY    #$00
               LDA    ($79),Y
               STA    $87,X
               INY
               LDA    ($79),Y
               STA    $88,X
               LDA    $79
               ADC    #$02
               STA    $85,X
               LDA    $7A
               ADC    #$00
               STA    $86,X
               LDY    $7E
               RTS
SUB606A        STY    $7E
               ASL
               TAY
               LDA    $50A9,Y
               STA    $77
               LDA    $50AA,Y
               ADC    #$50
               STA    $78
               LDA    #$00
               STA    $99,X
               TAY
               LDA    ($77),Y
               STA    $93,X
               INY
               LDA    ($77),Y
               STA    $94,X
               LDA    $77
               ADC    #$02
               STA    $91,X
               LDA    $78
               ADC    #$00
               STA    $92,X
               LDY    $7E
               RTS
SUB6097        LDA    #$00
               STA    $7C
               LDX    #$78
L609D          DEX
               STA    $80,X
               BNE    L609D
               STA    D667C+1
               STA    D667E+1
               STA    D66A6+1
               STA    D66AB+1
               STA    D66B2+1
               STA    D66B7+1
               STA    D6701+1
               STA    D6709+1
               STA    D66A8+1
               STA    L66E2+1
               STA    D66E4+1
               STA    D66EF+1
               STA    D66F8+1
               STA    D62D5+1
               STA    SUB6551+1
               STA    SUB65AD+1
               STA    L65B1+1
               LDA    #$0A
               STA    $80
               STA    $A8
               STA    $D0
               LDX    #$00
               JSR    SUB6039
               LDX    #$28
               JSR    SUB6039
               LDX    #$50
               JSR    SUB6039
               LDA    $5064
               STA    D65C2+1
               LDA    $5066
               STA    D8FD3
               LDX    #$06
               LDA    $500D
               SEC
               SBC    #$30
               CMP    #$09
               BCS    L6105
               TAX
L6105          LDA    #$2C
               CPX    #$06
               BCC    L610D
               ADC    #$1F
L610D          STA    D6482
               CPX    #$05
               LDA    #$00
               STA    D6138+1
               LDY    #$11
               LDX    #$2A
               BCS    L6121
               DEY
               TYA
               LDX    #$EA
L6121          STY    D612F+1
               STA    D6131+1
               STX    D6149
               LDY    #$10
               LDX    #$10
L612E          CLC
D612F          LDA    #$D1
D6131          ADC    #$D1
               STA    D6131+1
               LDA    #$00
D6138          ADC    #$D1
               STA    D6138+1
               LDA    #$00
               ADC    #$FF
               EOR    #$FF
               STA    D614A+1
               PHA
L6147          PLA
               PHA
D6149          NOP
D614A          LDA    #$D1
               ADC    #$00
               STA    D68BB,Y
               INY
               PLA
               ADC    D6131+1
               PHA
               LDA    D614A+1
               ADC    D6138+1
               STA    D614A+1
               INX
               TXA
               AND    #$0F
               BNE    L6147
               PLA
               LDA    D6131+1
               CMP    #$77
               BNE    L6171
               INC    D6131+1
L6171          TXA
               BNE    L612E
               RTS
SUB6175        LDA    $83,X
               BNE    L617E
               STA    $8B,X
               JMP    L62F2
L617E          LDA    $86,X
               STA    $7A
               LDA    $85,X
               STA    $79
               LDA    $92,X
               STA    $78
               LDA    $91,X
               STA    $77
               LDA    $9A,X
               ASL
               ASL
               TAY
               LDA    ($79),Y
               STA    D6287+1
               INY
               LDA    ($79),Y
               STA    L6242+1
               INY
               LDA    ($79),Y
               ADC    $96,X
               STA    $89,X
               INY
               LDA    ($79),Y
               ADC    $97,X
               STA    $8A,X
               BIT    L6242+1
               BVC    L61B7
               STA    $97,X
               LDA    $89,X
               STA    $96,X
L61B7          CLC
               LDY    $99,X
               LDA    ($77),Y
               ADC    $8C,X
               BPL    L61C2
               LDA    #$00
L61C2          CMP    #$60
               BCC    L61C8
               LDA    #$5F
L61C8          JSR    SUB670F
               CLC
               LDY    $81,X
               TYA
               ADC    $89,X
               STA    D61DC+1
               LDA    $8A,X
               ADC    $82,X
               STA    D61E2+1
               CLC
D61DC          LDA    #$D1
D61DE          ADC    #$D1
               STA    $89,X
D61E2          LDA    #$D1
D61E4          ADC    #$D1
               AND    #$0F
               STA    $8A,X
               LDA    $98,X
               BMI    L6242
               BEQ    L6242
               DEC    $98,X
               BNE    L6242
               CLC
               TYA
               ADC    $A0,X
               STA    $81,X
               TAY
               LDA    $82,X
               ADC    $A1,X
               STA    $82,X
               LDA    $A2,X
               STA    $98,X
               LDA    $A3,X
               BNE    L6242
               LDA    $A1,X
               BPL    L6225
               TYA
               CMP    $A5,X
               LDA    $82,X
               SBC    $A6,X
               BVC    L6218
               EOR    #$80
L6218          BMI    L6236
               TYA
               CMP    $A5,X
               BNE    L6225
               LDA    $82,X
               CMP    $A6,X
               BEQ    L6236
L6225          LDA    $A1,X
               BMI    L6242
               TYA
               CMP    $A5,X
               LDA    $82,X
               SBC    $A6,X
               BVC    L6234
               EOR    #$80
L6234          BMI    L6242
L6236          LDA    $A4,X
               STA    $8C,X
               LDA    #$00
               STA    $98,X
               STA    $81,X
               STA    $82,X
L6242          LDA    #$D1
               AND    #$0F
               BIT    D6287+1
               BPL    L6268
               TAY
               LDA    $9D,X
               SEC
               BVC    L625D
               SBC    #$0F
               BVC    L6257
               EOR    #$80
L6257          BPL    L6268
               INC    $9D,X
               BNE    L6267
L625D          SBC    #$F1
               BVC    L6263
               EOR    #$80
L6263          BMI    L6268
               DEC    $9D,X
L6267          TYA
L6268          CLC
               ADC    $9D,X
               BMI    D6273+1
               CMP    #$10
               BCC    L6276
               LDA    #$0F
D6273          BIT:   $A9
L6276          STA    D627F+1
               LDA    $80,X
               ASL
               ASL
               ASL
               ASL
D627F          ORA    #$D1
               TAY
               LDA    D68BB,Y
               STA    $8B,X
D6287          LDA    #$D1
               LSR
               TAY
               BCS    L6297
               LDA    $84,X
               BEQ    L6297
               LDA    $8B,X
               ORA    #$10
               STA    $8B,X
L6297          LDA    D6287+1
               ASL
               ASL
               ASL
               LDA    #$20
               BIT    L6242+1
               PHP
               BPL    L62C3
               TYA
               ORA    #$F0
               BCS    L62AD
               AND    #$0F
               CLC
L62AD          ADC    $9B,X
               STA    D62B8+1
               PLP
               BEQ    L62B7
               STA    $9B,X
L62B7          CLC
D62B8          LDA    #$D1
               ADC    D66A8+1
               STA    D66A8+1
               JMP    L62CF
L62C3          TYA
               CLC
               ADC    $9C,X
               STA    D667E+1
               PLP
               BEQ    L62CF
               STA    $9C,X
L62CF          LDA    L6242+1
               LSR
               AND    #$48
D62D5          ORA    #$D1
               STA    D62D5+1
               INC    $9A,X
               LDA    $9A,X
               CMP    $88,X
               BCC    L62E6
               LDA    $87,X
               STA    $9A,X
L62E6          INC    $99,X
               LDA    $99,X
               CMP    $94,X
               BCC    L62F2
               LDA    $93,X
               STA    $99,X
L62F2          LSR    D62D5+1
               LDA    $95,X
               BEQ    L6309
               DEC    $95,X
               BNE    L6309
               LDA    $83,X
               EOR    #$01
               STA    $83,X
               LDA    #$CA
               LDA    $9F,X
               STA    $95,X
L6309          RTS
L630A          DEC    $8E,X
               RTS
SUB630D        LDX    #$00
               JSR    SUB6319
               LDX    #$28
               JSR    SUB6319
               LDX    #$50
SUB6319        LDY    #$00
               STY    D6404+1
               LDA    $8E,X
               CMP    #$02
               BCS    L630A
               LDA    $8C,X
               STA    D6457+1
               LDA    $82,X
               STA    D648A
               LDA    $81,X
               STA    D6486
L6333          LDA    $8D,X
               STA    $8E,X
               LDA    $8F,X
               STA    $75
               LDA    $90,X
               STA    $76
               LDA    ($75),Y
               STA    D6349+1
               AND    #$0F
               STA    D634F+1
D6349          LDA    #$D1
               AND    #$F0
               BNE    L635E
D634F          LDA    #$D1
               STA    D6404+1
               BNE    L6379
               STA    $8E,X
               DEC    D65B8+1
               JMP    L6403
L635E          CMP    #$10
               BNE    L637C
               LDA    D634F+1
               BNE    L636B
               STA    $84,X
               BEQ    L636E
L636B          JSR    SUB6510
L636E          INY
               LDA    ($75),Y
               LSR
               JSR    SUB6040
               LDA    #$00
               STA    $99,X
L6379          JMP    L63FF
L637C          CMP    #$40
               BCS    L638B
               LDA    D6349+1
               ADC    #$E0
               STA    D667C+1
               JMP    L63FF
L638B          BNE    L6396
               LDA    D634F+1
               JSR    SUB606A
               JMP    L63FF
L6396          CMP    #$B0
               BCS    L63AA
               LDA    D6349+1
               ADC    #$B0
               STA    $8C,X
               JSR    SUB6535
               LDA    #$01
               STA    $83,X
               BNE    L6403
L63AA          BNE    L63C9
               LDA    D634F+1
               BEQ    L63BE
               SBC    #$01
               BNE    L63C4
               INY
               LDA    ($75),Y
               STA    $8D,X
               STA    $8E,X
               BCS    L63FF
L63BE          STA    $84,X
               STA    $99,X
               BEQ    L63FF
L63C4          JSR    SUB6510
               BCS    L63FF
L63C9          CMP    #$C0
               BNE    L63DD
               LDA    D634F+1
               BNE    L63D9
               STA    $83,X
               JSR    SUB6535
               BEQ    L6403
L63D9          STA    $80,X
               BNE    L63FF
L63DD          CMP    #$F0
               BEQ    L63EE
               LDA    D6349+1
               SEC
               SBC    #$D0
               BEQ    L6403
               JSR    SUB6040
               BCC    L63FF
L63EE          LDA    #$00
               STA    $84,X
               LDA    D634F+1
               JSR    SUB606A
               INY
               LDA    ($75),Y
               LSR
               JSR    SUB6040
L63FF          INY
               JMP    L6333
L6403          INY
D6404          LDA    #$D1
               CMP    #$01
               BNE    L6423
               STA    $A3,X
               LSR
               STA    $95,X
               LDA    ($75),Y
               INY
               STA    $A2,X
               STA    $98,X
               LDA    ($75),Y
               INY
               STA    $A0,X
               LDA    ($75),Y
               INY
               STA    $A1,X
               JMP    L6501
L6423          CMP    #$02
               BEQ    L642A
               JMP    L64AC
L642A          LDA    #$00
               STA    $A3,X
               STA    $95,X
               LDA    ($75),Y
               INY
               STA    $A2,X
               STA    $98,X
               INY
               INY
               INY
               LDA    ($75),Y
               PHP
               BPL    L6441
               EOR    #$FF
L6441          STA    $A1,X
               DEY
               LDA    ($75),Y
               PLP
               CLC
               BPL    L644D
               EOR    #$FF
               SEC
L644D          ADC    #$00
               STA    $A0,X
               BCC    L6455
               INC    $A1,X
L6455          INY
               INY
D6457          LDA    #$D1
               JSR    SUB670F
               LDA    D61DE+1
               STA    D646E+1
               LDA    D61E4+1
               STA    D6475+1
               LDA    $8C,X
               JSR    SUB670F
               SEC
D646E          SBC    #$D1
               STA    $A5,X
               LDA    D61E4+1
D6475          SBC    #$D1
               STA    $A6,X
               LDA    $8C,X
               STA    $A4,X
               LDA    D6457+1
               STA    $8C,X
D6482          JMP    L648D
               HEX    A9
D6486          HEX    D19581A9
D648A          HEX    D19582
L648D          SEC
               LDA    $A5,X
               SBC    $81,X
               LDA    $A6,X
               SBC    $82,X
               BPL    L6501
               LDA    $A0,X
               EOR    #$FF
               CLC
               ADC    #$01
               STA    $A0,X
               LDA    $A1,X
               EOR    #$FF
               ADC    #$00
               STA    $A1,X
               JMP    L6501
L64AC          CMP    #$03
               BNE    L64B7
               LDA    ($75),Y
               INY
               STA    $9A,X
               BNE    L6501
L64B7          CMP    #$04
               BNE    L64C2
               LDA    ($75),Y
               INY
               STA    $99,X
               BNE    L6501
L64C2          CMP    #$05
               BNE    L64DC
               LDA    ($75),Y
               INY
               STA    $9E,X
               STA    $95,X
               LDA    ($75),Y
               INY
               STA    $9F,X
               LDA    #$00
               STA    $98,X
               STA    $81,X
               STA    $82,X
               BEQ    L6501
L64DC          CMP    #$08
               BNE    L64F7
               LDA    ($75),Y
               INY
               STA    D66EF+1
               STA    D66F8+1
               LDA    ($75),Y
               INY
               STA    D6701+1
               LDA    ($75),Y
               INY
               STA    D6709+1
               BNE    L6501
L64F7          CMP    #$09
               BNE    L6501
               LDA    ($75),Y
               INY
               STA    D65C2+1
L6501          CLC
               TYA
               ADC    $8F,X
               STA    $8F,X
               LDA    #$00
               ADC    $90,X
               STA    $90,X
               STA    $76
               RTS
SUB6510        STA    L66E2+1
               LDA    #$78
               STA    D66E4+1
               INY
               LDA    ($75),Y
               STA    D66AB+1
               INY
               LDA    ($75),Y
               STA    D66A6+1
               LDA    #$01
               STA    $84,X
               LSR
               STA    $99,X
               STA    D66EF+1
               STA    D66B2+1
               STA    D66B7+1
               RTS
SUB6535        LDA    #$00
               STA    $9A,X
               STA    $9D,X
               STA    $9C,X
               STA    $9B,X
               STA    $99,X
               STA    $98,X
               STA    $81,X
               STA    $82,X
               STA    $96,X
               STA    $97,X
               STA    $95,X
               RTS
L654E          STA    $7C
               RTS
SUB6551        LDY    #$D1
               LDA    $50C9,Y
               CMP    #$FF
               BEQ    L654E
               ASL
               TAY
               CLC
               LDA    $5067
               STA    $75
               LDA    $5068
               ADC    #$50
               STA    $76
               LDA    ($75),Y
               STA    $8F
               INY
               LDA    ($75),Y
               ADC    #$50
               STA    $90
               INY
               LDA    ($75),Y
               STA    $B7
               INY
               LDA    ($75),Y
               ADC    #$50
               STA    $B8
               INY
               LDA    ($75),Y
               STA    $DF
               INY
               LDA    ($75),Y
               ADC    #$50
               STA    $E0
               LDA    #$00
               STA    D667C+1
               LDA    #$03
               STA    D65B8+1
               RTS
L6597          INC    SUB6551+1
               STA    SUB65AD+1
               STA    L65B1+1
L65A0          LDA    L65B1+1
               BNE    L65B1
               JSR    SUB6551
               LDA    $7C
               BEQ    L65B1
               RTS
SUB65AD        LDA    #$D1
               BEQ    L65A0
L65B1          LDA    #$D1
               BNE    L65BC
               JSR    SUB630D
D65B8          LDA    #$D1
               BEQ    L6597
L65BC          INC    L65B1+1
               LDA    L65B1+1
D65C2          EOR    #$00
               BNE    L65D9
               STA    L65B1+1
               INC    SUB65AD+1
               LDA    SUB65AD+1
               EOR    #$40
               BNE    L65D9
               STA    SUB65AD+1
               INC    SUB6551+1
L65D9          LDX    #$00
               STX    D62D5+1
               STX    D66A8+1
               JSR    SUB6175
               LDX    #$28
               JSR    SUB6175
               LDX    #$50
               JSR    SUB6175
               SEC
               LDA    $89
               STA    $64
               LDA    $8A
               STA    $65
               LDA    $89
               BCC    L661D
               ASL
               ROL    $65
               ASL
               ROL    $65
               ASL
               ROL    $65
               CLC
               ADC    $89
               STA    $64
               LDA    $8A
               ADC    $65
               ROR
               ROR    $64
               ROR
               ROR    $64
               ROR
               ROR    $64
               ROR
               ROR    $64
               AND    #$0F
               STA    $65
L661D          SEC
               LDA    $B1
               STA    $66
               LDA    $B2
               STA    $67
               LDA    $B1
               BCC    L664C
               ASL
               ROL    $67
               ASL
               ROL    $67
               ASL
               ROL    $67
               CLC
               ADC    $B1
               STA    $66
               LDA    $B2
               ADC    $67
               ROR
               ROR    $66
               ROR
               ROR    $66
               ROR
               ROR    $66
               ROR
               ROR    $66
               AND    #$0F
               STA    $67
L664C          SEC
               LDA    $D9
               STA    $68
               LDA    $DA
               STA    $69
               LDA    $D9
               BCC    L667B
               ASL
               ROL    $69
               ASL
               ROL    $69
               ASL
               ROL    $69
               CLC
               ADC    $D9
               STA    $68
               LDA    $DA
               ADC    $69
               ROR
               ROR    $68
               ROR
               ROR    $68
               ROR
               ROR    $68
               ROR
               ROR    $68
               AND    #$0F
               STA    $69
L667B          CLC
D667C          LDA    #$D1
D667E          ADC    #$D1
               AND    #$1F
               STA    $6A
               SEC
               BCC    L6692
               ASL
               ASL
               ASL
               ADC    $6A
               ROR
               ROR
               ROR
               ROR
               AND    #$1F
L6692          STA    $6A
               LDA    D62D5+1
               STA    $6B
               LDA    $8B
               STA    $6C
               LDA    $B3
               STA    $6D
               LDA    $DB
               STA    $6E
               CLC
D66A6          LDA    #$D1
D66A8          ADC    #$D1
               TAY
D66AB          LDA    #$D1
               ADC    #$00
               TAX
               CLC
               TYA
D66B2          ADC    #$D1
               STA    $6F
               TXA
D66B7          ADC    #$D1
               STA    $70
               SEC
               BCC    L66E2
               TAY
               LDA    $6F
               ASL
               ROL    $70
               ASL
               ROL    $70
               ASL
               ROL    $70
               CLC
               ADC    $6F
               STA    $6F
               TYA
               ADC    $70
               ROR
               ROR    $6F
               ROR
               ROR    $6F
               ROR
               ROR    $6F
               ROR
               ROR    $6F
               AND    #$0F
               STA    $70
L66E2          LDA    #$D1
D66E4          CMP    #$D1
               STA    D66E4+1
               BNE    L66ED
               LDA    #$FF
L66ED          STA    $71
D66EF          LDA    #$D1
               BEQ    L670E
               DEC    D66EF+1
               BNE    L670E
D66F8          LDA    #$D1
               STA    D66EF+1
               CLC
               LDA    D66B2+1
D6701          ADC    #$D1
               STA    D66B2+1
               LDA    D66B7+1
D6709          ADC    #$D1
               STA    D66B7+1
L670E          RTS
SUB670F        STY    $7E
               TAY
               LDA    $5063
               CMP    #$01
               BNE    L6728
               LDA    D6737,Y
               STA    D61E4+1
               LDA    D6797,Y
               STA    D61DE+1
               LDY    $7E
               RTS
L6728          LDA    D67F7,Y
               STA    D61E4+1
               LDA    D6857,Y
               STA    D61DE+1
               LDY    $7E
               RTS
D6737          HEX    0E0E0D0C0B0B0A090908080707070606
               HEX    05050504040404030303030302020202
               HEX    02020201010101010101010101010100
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D6797          HEX    F8106080D82888F060E058E07C08B040
               HEX    EC9444F8B0702CFDBE845820F6CAA27C
               HEX    583816F8DFC2AC907B65513E2C1C0AFC
               HEX    EFE1D6C8BDB2A89F968E857E77706B64
               HEX    5E59544F4B47423F3B3835322F2C2A27
               HEX    2523211F1D1C1A19171615131211100F
D67F7          HEX    0D0C0B0A0A0909080807070606060505
               HEX    05040404040303030303020202020202
               HEX    02010101010101010101010101000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
D6857          HEX    1055A4FC5FCA3DB83BC555EC882AD27E
               HEX    2FE59E5C1DE2AB764415E9BF98724F2E
               HEX    0FF1D5BBA28B74604C39281707F9EBDD
               HEX    D1C5BAB0A69D948C847C756F69635D58
               HEX    534E4A46423E3B3734312F2C29272523
               HEX    211F1D1C1A19171615141211100F0E0D
               HEX    00000000
D68BB          HEX    00000000000000000000000000000000
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
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    A98D20EDFD20D86984C2CCCFC1C4A0D3
               HEX    CFCEC7ACC1A4B2B0B0B08D0060688502
               HEX    688503A001B102F00620EDFDC8D0F618
               HEX    9865028502A503690048A50248600000
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
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    0000000000
L7000          LDA    #$26
               STA    $5A
               STA    $50
               LDA    #$17
               STA    $5B
               STA    $51
               LDA    #$01
               STA    $53
               STA    D7B8F
               STZ    D7BB0
               STZ    D7BB1
               JSR    SUB7BB2
               JSR    SUB8795
               JSR    SUB7713
               JSR    SUB87DC
L7025          JSR    SUB706A
               INC    $00
               LDA    $00
               BNE    L7025
               LDA    #$64
               JSR    WAIT
               LDA    D7BB0
               BEQ    L703D
               LDA    #$96
               JSR    WAIT
L703D          LDA    D7B8F
               CMP    D7B90
               BNE    L704B
               LDA    D7B8F
               INC
               AND    #$0F
L704B          STA    $53
               JSR    SUB85E8
               LDA    #$64
               JSR    WAIT
               LDA    D7BB0
               BEQ    L705F
               LDA    #$96
               JSR    WAIT
L705F          LDA    D7B90
               STA    $53
               JSR    SUB85E8
               JMP    L7025
SUB706A        LDA    KEYBD
               BMI    L7070
               RTS
L7070          CMP    #$91
               BNE    L707C
               JSR    SUB856B
               PLA
               PLA
               JMP    L7B60
L707C          CMP    #$95
               BNE    L7086
               JSR    SUB7B18
               JMP    L7217
L7086          CMP    #$88
               BNE    L7090
               JSR    SUB7B32
               JMP    L7217
L7090          CMP    #$8B
               BNE    L709A
               JSR    SUB7B00
               JMP    L7217
L709A          CMP    #$8A
               BNE    L70A4
               JSR    SUB7AE6
               JMP    L7217
L70A4          PHA
               JSR    SUB73DA
               PLA
               CMP    #$A0
               BNE    L70BB
               LDA    D7B8F
               STA    D7B90
               STA    $53
               JSR    SUB85E8
               JMP    L7217
L70BB          CMP    #$C3
               BNE    L70D8
               LDA    $50
               STA    $5E
               LDA    $51
               STA    $5F
               JSR    SUB8748
               JSR    SUB83C7
               LDA    $5E
               STA    $50
               LDA    $5F
               STA    $51
               JMP    L7217
L70D8          CMP    #$C4
               BNE    L70EB
               JSR    SUB72E5
               JSR    SUB8795
               JSR    SUB7713
               JSR    SUB87DC
               JMP    L7217
L70EB          CMP    #$D3
               BNE    L7108
               LDA    $50
               STA    $62
               LDA    $51
               STA    $63
               JSR    SUB8795
               JSR    SUB777E
               LDA    $62
               STA    $50
               LDA    $63
               STA    $51
               JMP    L7217
L7108          CMP    #$CC
               BNE    L7128
               LDA    $50
               STA    $62
               LDA    $51
               STA    $63
               JSR    SUB780F
               JSR    SUB8748
               JSR    SUB87DC
               LDA    $62
               STA    $50
               LDA    $63
               STA    $51
               JMP    L7217
L7128          CMP    #$C6
               BNE    L715C
               JSR    SUB8748
               LDA    $50
               STA    $5E
               LDA    $51
               STA    $5F
               STZ    $50
               STZ    $51
               LDA    #$4F
               STA    $57
               LDA    #$2F
               STA    $58
               LDA    D7B8F
               STA    D7B90
               STA    $53
               JSR    SUB8156
               LDA    $5E
               STA    $50
               LDA    $5F
               STA    $51
               JSR    SUB85E8
               JMP    L7217
L715C          CMP    #$8D
               BNE    L7174
               JSR    SUB8748
               LDA    D7BB0
               BEQ    L716E
               STZ    D7BB0
               JMP    L7217
L716E          INC    D7BB0
               JMP    L7217
L7174          CMP    #$D5
               BNE    L717E
               JSR    SUB8663
               JMP    L7217
L717E          CMP    #$AE
               BNE    L7190
               JSR    SUB7661
               JSR    SUB8576
               LDA    $59
               STA    D7B90
               JMP    L7217
L7190          CMP    #$AC
               BNE    L71A2
               JSR    SUB767E
               JSR    SUB8576
               LDA    $59
               STA    D7B90
               JMP    L7217
L71A2          CMP    #$B1
               BNE    L71AC
               JSR    SUB8748
               JMP    L7217
L71AC          CMP    #$B2
               BNE    L71BE
               JSR    SUB8663
               JSR    SUB8576
               LDA    $59
               STA    D7B90
               JMP    L7217
L71BE          CMP    #$C9
               BNE    L71CE
               JSR    SUB8795
               JSR    SUB7713
               JSR    SUB87DC
               JMP    L7217
L71CE          CMP    #$C1
               BNE    L71D8
               JSR    SUB7453
               JMP    L7217
L71D8          CMP    #$B9
               BNE    L71E5
               JSR    SUB769D
               JSR    SUB77B3
               JMP    L7217
L71E5          CMP    #$B0
               BNE    L7203
               JSR    SUB7841
               JSR    SUB76DB
               JSR    SUB8576
               LDA    $59
               STA    D7B90
               JSR    SUB8795
               JSR    SUB7713
               JSR    SUB87DC
               JMP    L7217
L7203          CMP    #$B5
               BNE    L720D
               JSR    SUB7333
               JMP    L7217
L720D          CMP    #$B6
               BNE    L7217
               JSR    SUB73E8
               JMP    L7217
L7217          LDA    STROBE
               RTS
L721B          JSR    SUB8748
               LDA    #$04
               STA    D7658
               STZ    D7659
               LDA    #$05
               STA    D765C
               LDA    #$84
               STA    $0A
               LDA    #$79
               STA    $0B
               LDA    #$20
               STA    D796C
               LDA    #$2A
               STA    D796E
               LDY    #$06
               LDA    #$00
               STA    ($0A),Y
               DEY
L7244          LDA    D72D9,Y
               STA    ($0A),Y
               DEY
               CPY    #$FF
               BNE    L7244
               LDA    #$0E
               STA    D797B
               JSR    SUB7910
               LDA    #$50
               STA    D796C
               LDA    #$10
               STA    D796E
               LDY    #$04
               LDA    #$00
               STA    ($0A),Y
               DEY
L7267          LDA    D72E0,Y
               STA    ($0A),Y
               DEY
               CPY    #$FF
               BNE    L7267
               LDA    #$0C
               STA    D797B
               JSR    SUB7910
               LDA    $0310
               BEQ    L7285
               JSR    SUB9013
               JSR    SUB6097
               CLI
L7285          LDA    STROBE
               LDA    D7659
               STA    D7BB1
               LDA    #$01
               STA    D7660
L7293          JSR    SUB75DC
               JSR    SUB76DB
               LDA    KEYBD
               BMI    L72B9
               LDA    #$78
               JSR    WAIT
               INC    D7BB1
               LDA    D7BB1
               CMP    D7658
               BCC    L7293
               BEQ    L7293
               LDA    D7659
               STA    D7BB1
               JMP    L7293
L72B9          LDA    STROBE
               LDA    #$09
               STA    D7658
               STZ    D765C
               SEI
               LDA    $0310
               BEQ    L72D0
               JSR    SUB8DE8
               JSR    SUB8DF2
L72D0          JSR    SUB856B
               JSR    SUB8663
               JMP    L7000
D72D9          ASC    "SPLASH"
               HEX    00
D72E0          HEX    D4D5CEC500
SUB72E5        LDA    STROBE
               JSR    SUB8795
               JSR    SUB7DC5
               LDA    TXTSET
               JSR    $F399
               JSR    HOME
               LDA    #$03
               JSR    $FE95
               LDA    #$2A
               STA    $60
               LDA    #$73
               STA    $61
               LDY    #$00
L7306          LDA    ($60),Y
               BEQ    L7310
               STA    $0200,Y
               INY
               BRA    L7306
L7310          JSR    $BE03
L7313          LDA    KEYBD
               BPL    L7313
               LDA    STROBE
               LDA    TXTCLR
               LDA    #$2F
               STA    D7B96
               LDA    MIXCLR
               JSR    SUB87DC
               RTS
               ASC    "CATALOG"
               HEX    8D00
SUB7333        LDA    $50
               STA    D7BA1
               STA    $57
               LDA    $51
               STA    D7BA3
               STA    $4F
               LDA    STROBE
               JSR    SUB8748
               LDA    D7B8F
               STA    $53
               JSR    SUB85E8
L734F          LDA    KEYBD
               BPL    L734F
               CMP    #$D1
               BNE    L735B
               JMP    L73D6
L735B          CMP    #$95
               BNE    L7365
               JSR    SUB7B18
               JMP    L73A6
L7365          CMP    #$88
               BNE    L736F
               JSR    SUB7B32
               JMP    L73A6
L736F          CMP    #$8B
               BNE    L7379
               JSR    SUB7B00
               JMP    L73A6
L7379          CMP    #$8A
               BNE    L7383
               JSR    SUB7AE6
               JMP    L73A6
L7383          CMP    #$A0
               BNE    L73A3
               JSR    SUB73DA
               JSR    SUB8663
               LDA    $50
               STA    D7BA2
               LDA    $51
               STA    D7BA4
               JSR    SUB86AD
               LDA    $5A
               STA    $50
               LDA    $5B
               STA    $51
               RTS
L73A3          JMP    L734F
L73A6          JSR    SUB8663
               LDA    #$0F
               STA    $53
               LDA    $51
               STA    $63
               LDA    $50
               STA    $5A
               LDA    $51
               STA    $5B
               LDA    D7BA1
               STA    $57
               LDA    D7BA3
               STA    $4F
               STA    $58
               JSR    SUB8180
               LDA    $5A
               STA    $50
               LDA    $5B
               STA    $51
               LDA    STROBE
               JMP    L734F
L73D6          JSR    SUB8663
               RTS
SUB73DA        LDA    #$19
L73DC          LDX    #$14
L73DE          DEX
               BNE    L73DE
               LDY    SPKR
               DEC
               BNE    L73DC
               RTS
SUB73E8        JSR    SUB8748
L73EB          LDA    KEYBD
               BPL    L73EB
               CMP    #$D1
               BNE    L73F7
               JMP    L744F
L73F7          CMP    #$95
               BNE    L7401
               JSR    SUB7B18
               JMP    L742F
L7401          CMP    #$88
               BNE    L740B
               JSR    SUB7B32
               JMP    L742F
L740B          CMP    #$8B
               BNE    L7415
               JSR    SUB7B00
               JMP    L742F
L7415          CMP    #$8A
               BNE    L741F
               JSR    SUB7AE6
               JMP    L742F
L741F          CMP    #$A0
               BNE    L742F
               JSR    SUB8576
               LDA    $59
               STA    D7B90
               JSR    SUB73DA
               RTS
L742F          JSR    SUB8663
               LDA    $50
               STA    D7BAC
               LDA    $51
               STA    D7BAD
               JSR    SUB8823
               LDA    D7BAC
               STA    $50
               LDA    D7BAD
               STA    $51
               LDA    STROBE
               JMP    L73EB
L744F          JSR    SUB8663
               RTS
SUB7453        LDA    STROBE
               JSR    SUB769D
               JSR    SUB8748
               JSR    SUB8526
               LDA    #$14
               JSR    VTABZ
               LDA    #$1F
               STA    $24
               LDX    #$E7
               LDY    #$75
               JSR    SUB7ED0
               LDA    #$15
               JSR    VTABZ
               LDA    #$01
               STA    $24
               LDX    #$F7
               LDY    #$75
               JSR    SUB7ED0
               JSR    SUB7517
               LDA    #$15
               JSR    VTABZ
               LDA    #$27
               STA    $24
               LDX    #$1A
               LDY    #$76
               JSR    SUB7ED0
               LDA    #$3E
               STA    D765A
               LDA    D765C
               STA    D765B
               LDA    #$06
               STA    D765E
               JSR    SUB7578
               LDA    D765B
               STA    D765C
               LDA    #$0A
               STA    D765E
               LDA    D7BB1
               STA    D765F
               LDA    D7659
               STA    D7BB1
               LDA    STROBE
               JSR    SUB8526
               LDA    #$06
               SEC
               SBC    D765C
               ASL
               STA    D7660
L74CC          JSR    SUB75DC
               JSR    SUB76DB
               LDA    KEYBD
               BMI    L74F8
               LDX    D7660
L74DA          LDA    #$78
               JSR    WAIT
               DEX
               BNE    L74DA
               INC    D7BB1
               LDA    D7BB1
               CMP    D7658
               BCC    L74CC
               BEQ    L74CC
               LDA    D7659
               STA    D7BB1
               JMP    L74CC
L74F8          LDA    D765F
               STA    D7BB1
               LDA    STROBE
               JSR    SUB8526
L7504          JSR    SUB8526
               JSR    SUB8663
               JSR    SUB76DB
               JSR    SUB8795
               JSR    SUB7713
               JSR    SUB87DC
               RTS
SUB7517        STZ    D765D
               LDA    #$0A
               STA    D765E
               LDA    #$15
               JSR    VTABZ
               LDA    #$09
               STA    $24
               LDX    #$09
               LDY    #$76
               JSR    SUB7ED0
               LDA    #$19
               STA    D765A
               LDA    D7659
               STA    D765B
               JSR    SUB7578
               LDA    D765B
               STA    D7659
               STA    D765D
               LDA    D7658
               CMP    D7659
               BCS    L7553
               LDA    #$09
               STA    D7658
L7553          LDA    #$15
               JSR    VTABZ
               LDA    #$1B
               STA    $24
               LDX    #$32
               LDY    #$76
               JSR    SUB7ED0
               LDA    #$25
               STA    D765A
               LDA    D7658
               STA    D765B
               JSR    SUB7578
               LDA    D765B
               STA    D7658
               RTS
SUB7578        LDA    D765A
               STA    $24
               LDA    D765B
               CLC
               ADC    #$B0
               JSR    $FDF0
L7586          LDA    KEYBD
               BPL    L7586
               CMP    #$D1
               BNE    L7596
               PLA
               PLA
               PLA
               PLA
               JMP    L7504
L7596          PHA
               JSR    SUB73DA
               PLA
               CMP    #$95
               BNE    L75B6
               INC    D765B
               LDA    D765B
               CMP    D765E
               BNE    L75B0
               LDA    D765D
               STA    D765B
L75B0          LDA    STROBE
               JMP    SUB7578
L75B6          CMP    #$88
               BNE    L75D4
               DEC    D765B
               LDA    D765B
               BMI    L75C7
               CMP    D765D
               BCS    L75CE
L75C7          LDA    D765E
               DEC
               STA    D765B
L75CE          LDA    STROBE
               JMP    SUB7578
L75D4          CMP    #$8D
               BNE    L75CE
               LDA    STROBE
               RTS
SUB75DC        CMP    RDVBL
               BPL    SUB75DC
L75E1          CMP    RDVBL
               BMI    L75E1
               RTS
               ASC    "FRAME ANIMATION"
               HEX    00C1EEE9EDE1F4E5A000D0E9E3EBEFF5
               HEX    F4A000E6F2E1EDE5F3BAA0C6D2CFCDA0
               HEX    ADBEA000A0AFA0A0C1EEE9EDE1F4E9EF
               ASC    "n speed -> "
               HEX    00A0AFA0A0D4CFA0ADBEA000A0D3CCCF
               HEX    D7A0A0A000A0CDC5C4C9D5CDA000A0C6
               HEX    C1D3D4A0A0A000
D7658          HEX    00
D7659          HEX    00
D765A          HEX    00
D765B          HEX    00
D765C          HEX    00
D765D          HEX    00
D765E          HEX    00
D765F          HEX    00
D7660          HEX    00
SUB7661        JSR    SUB769D
               INC    D7BB1
               LDA    D7BB1
               CMP    #$0A
               BNE    L7671
               STZ    D7BB1
L7671          JSR    SUB76DB
               JSR    SUB8795
               JSR    SUB7713
               JSR    SUB87DC
               RTS
SUB767E        JSR    SUB769D
               DEC    D7BB1
               LDA    D7BB1
               CMP    #$FF
               BNE    L7690
               LDA    #$09
               STA    D7BB1
L7690          JSR    SUB76DB
               JSR    SUB8795
               JSR    SUB7713
               JSR    SUB87DC
               RTS
SUB769D        LDX    D7BB1
               LDA    D7774,X
               STA    $61
               CLC
               ADC    #$04
               STA    $07
               STZ    $60
               STZ    $06
               LDX    #$04
L76B0          LDY    #$00
               STX    L76BE+2
               STA    RAMWRTON
               STX    D76C6+2
               STA    RAMWRTOFF
L76BE          LDA    $0400,Y
               STA    ($60),Y
               STA    RAMRDON
D76C6          LDA    $0400,Y
               STA    RAMRDOFF
               STA    ($06),Y
               INY
               BNE    L76BE
               INC    $61
               INC    $07
               INX
               CPX    #$08
               BNE    L76B0
               RTS
SUB76DB        LDX    D7BB1
               LDA    D7774,X
               STA    $61
               CLC
               ADC    #$04
               STA    $07
               STZ    $60
               STZ    $06
               LDX    #$04
L76EE          LDY    #$00
               STX    D76F8+2
               STX    D7700+2
L76F6          LDA    ($60),Y
D76F8          STA    $0400,Y
               LDA    ($06),Y
               STA    RAMWRTON
D7700          STA    $0400,Y
               STA    RAMWRTOFF
               INY
               BNE    L76F6
               INC    $61
               INC    $07
               INX
               CPX    #$08
               BNE    L76EE
               RTS
SUB7713        LDA    $50
               STA    $5E
               LDA    $51
               STA    $5F
               LDA    #$46
               STA    $50
               LDA    #$4E
               STA    $57
               LDA    #$01
               STA    $51
               LDA    #$0B
               STA    $58
               LDA    #$00
               STA    $53
               JSR    SUB8156
               INC    $50
               DEC    $57
               LDA    #$02
               STA    $63
               LDA    #$0A
               STA    $4F
               LDA    #$0F
               STA    $53
               JSR    SUB8180
               LDA    #$49
               STA    $62
               LDA    #$04
               STA    $63
               LDA    #$07
               STA    $53
               LDA    D7BB1
               JSR    SUB907D
               LDA    $5E
               STA    $50
               LDA    $5F
               STA    $51
               LDA    #$FF
               JSR    WAIT
               LDA    #$FF
               JSR    WAIT
               LDA    #$FF
               JSR    WAIT
               LDA    #$FF
               JSR    WAIT
               RTS
D7774          HEX    20283038404850586068
SUB777E        JSR    SUB8748
               JSR    SUB8526
               LDA    #$84
               STA    $0A
               LDA    #$79
               STA    $0B
               LDA    #$14
               JSR    VTABZ
               LDA    #$22
               STA    $24
               LDX    #$95
               LDY    #$7A
               JSR    SUB7ED0
               JSR    SUB78BD
               JSR    SUB7873
               LDA    #$18
               STA    D7974
               LDA    #$08
               STA    D7976
               JSR    SUB78E9
               JSR    SUB78F2
               RTS
SUB77B3        JSR    SUB8748
               JSR    SUB8526
               LDA    #$84
               STA    $0A
               LDA    #$79
               STA    $0B
               LDA    #$14
               JSR    VTABZ
               LDA    #$20
               STA    $24
               LDX    #$A0
               LDY    #$7A
               JSR    SUB7ED0
               LDA    #$15
               JSR    VTABZ
               LDA    #$01
               STA    $24
               LDX    #$00
               LDY    #$76
               JSR    SUB7ED0
               JSR    SUB7517
               JSR    SUB7873
               LDX    D7659
               LDA    D7774,X
               STA    D7974
               LDA    D7658
               SEC
               SBC    D7659
               INC
               TAX
               STZ    D7976
L77FC          LDA    D7976
               CLC
               ADC    #$08
               STA    D7976
               DEX
               BNE    L77FC
               JSR    SUB78E9
               JSR    SUB78F2
               RTS
SUB780F        JSR    SUB8748
               JSR    SUB8526
               LDA    #$84
               STA    $0A
               LDA    #$79
               STA    $0B
               LDA    #$14
               JSR    VTABZ
               LDA    #$22
               STA    $24
               LDX    #$BC
               LDY    #$7A
               JSR    SUB7ED0
               JSR    SUB78BD
               JSR    SUB7873
               LDA    #$18
               STA    D796C
               LDA    #$08
               STA    D796E
               JSR    SUB7910
               RTS
SUB7841        JSR    SUB8748
               JSR    SUB8526
               LDA    #$84
               STA    $0A
               LDA    #$79
               STA    $0B
               LDA    #$14
               JSR    VTABZ
               LDA    #$20
               STA    $24
               LDX    #$AE
               LDY    #$7A
               JSR    SUB7ED0
               JSR    SUB7873
               LDA    #$20
               STA    D796C
               LDA    #$51
               STA    D796E
               JSR    SUB7BB2
               JSR    SUB7910
               RTS
SUB7873        LDA    STROBE
               LDA    #$16
               JSR    VTABZ
               LDA    #$01
               STA    $24
               LDX    #$84
               LDY    #$7A
               JSR    SUB7ED0
               JSR    CROUT
               LDA    #$11
               STA    $24
               LDX    #$00
               JSR    $FD6F
               TXA
               CLC
               ADC    #$08
               STA    D797B
               TXA
               TAY
               LDA    #$00
               STA    ($0A),Y
               DEY
L78A0          LDA    $0200,Y
               STA    ($0A),Y
               DEY
               CPY    #$FF
               BNE    L78A0
               JSR    SUB8526
               JSR    SUB8663
               JSR    SUB8795
               LDA    D797B
               CMP    #$08
               BNE    L78BC
               PLA
               PLA
L78BC          RTS
SUB78BD        LDA    #$17
               JSR    VTABZ
               LDA    #$01
               STA    $24
               LDX    #$D7
               LDY    #$78
               JSR    SUB7ED0
               LDA    D7BB1
               CLC
               ADC    #$B0
               JSR    $FDF0
               RTS
               ASC    "Current frame -> "
               HEX    00
SUB78E9        JSR    $BF00
               CPY    #$57
               ADC    $3DD0,Y
               RTS
SUB78F2        JSR    $BF00
               INY
               HEX    6379D034AD68798D72798D7A792000BF
               HEX    CB71792000BFCC797960
SUB7910        JSR    $BF00
               INY
               HEX    6379D016AD68798D6A798D7A792000BF
               HEX    CA69792000BFCC79796048202685A915
               HEX    2024FCA9018524A2C7A07A20D07E6820
               HEX    DAFDA2D4A07A20D07E206FFD20268520
               HEX    638660077B79C3060000010000000003
               HEX    7B79001000040000
D796C          HEX    1800
D796E          HEX    080000040000
D7974          HEX    1800
D7976          HEX    0800000100
D797B          HEX    1EAFC6C6C5C4C9D4AF00000000000000
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
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    000000000000000000C5EEF4E5F2A0E6
               ASC    "ilename: "
               HEX    00D3C1D6C5A0C6D2C1CDC500D3C1D6C5
               ASC    " FRAMESET"
               HEX    00D2C5C1C4A0C6D2C1CDC5D3C5D400CC
               ASC    "OAD FRAME"
               HEX    00C4E9F3EBA0C5F2F2EFF2A0A300A0AD
               ASC    " Press <RETURN>"
               HEX    00
SUB7AE6        LDA    $5B
               CMP    #$2F
               BCC    L7AED
               RTS
L7AED          LDA    D7B8F
               STA    $53
               LDA    D7BB0
               BEQ    L7AFA
               JSR    SUB85E8
L7AFA          INC    $5B
               JSR    SUB7B4A
               RTS
SUB7B00        LDA    $5B
               BNE    L7B05
               RTS
L7B05          LDA    D7B8F
               STA    $53
               LDA    D7BB0
               BEQ    L7B12
               JSR    SUB85E8
L7B12          DEC    $5B
               JSR    SUB7B4A
               RTS
SUB7B18        LDA    $5A
               CMP    #$4F
               BCC    L7B1F
               RTS
L7B1F          LDA    D7B8F
               STA    $53
               LDA    D7BB0
               BEQ    L7B2C
               JSR    SUB85E8
L7B2C          INC    $5A
               JSR    SUB7B4A
               RTS
SUB7B32        LDA    $5A
               BNE    L7B37
               RTS
L7B37          LDA    D7B8F
               STA    $53
               LDA    D7BB0
               BEQ    L7B44
               JSR    SUB85E8
L7B44          DEC    $5A
               JSR    SUB7B4A
               RTS
SUB7B4A        LDA    $5A
               STA    $50
               LDA    $5B
               STA    $51
               JSR    SUB8576
               LDA    $59
               STA    D7B90
               LDA    D7B8F
               STA    $53
               RTS
L7B60          LDA    STROBE
               JSR    SUB811A
               JSR    SUB8DE8
               JSR    SUB8DF2
               JSR    SUB8DD4
               JSR    SUB8DDE
               SEI
               STZ    $0802
               JMP    $03D0
               HEX    6000
D7B7B          HEX    00
D7B7C          HEX    00
D7B7D          HEX    00
D7B7E          HEX    00
D7B7F          HEX    00000000000000000000000000000000
D7B8F          HEX    00
D7B90          HEX    00000000
D7B94          HEX    00
D7B95          HEX    00
D7B96          HEX    0000000100000000000000
D7BA1          HEX    00
D7BA2          HEX    00
D7BA3          HEX    00
D7BA4          HEX    000000000000
D7BAA          HEX    00
D7BAB          HEX    00
D7BAC          HEX    00
D7BAD          HEX    0000
D7BAF          HEX    00
D7BB0          HEX    00
D7BB1          HEX    00
SUB7BB2        LDX    #$50
               LDA    #$00
               TAY
               LDA    #$00
L7BB9          STA    $2000,Y
               INY
               BNE    L7BB9
               INC    L7BB9+2
               DEX
               BNE    L7BB9
               LDA    #$20
               STA    L7BB9+2
               RTS
               HEX    8D00C0A653BD2889A8AD7B7BC902F010
               HEX    98202A7FAD967BC927F0049820FB7B60
               HEX    9820B77FAD967BC927F0049820287C60
               HEX    A228CA9D50069DD0069D50079DD007D0
               HEX    F1AABD3889A228CA8D05C09D50069DD0
               HEX    069D50079DD0078D04C0D0EB60A228CA
               HEX    9D500A9DD00A9D500B9DD00BD0F1AABD
               HEX    3889A228CA8D05C09D500A9DD00A9D50
               HEX    0B9DD00B8D04C0D0EB608D00C0AD977B
               HEX    CD987BD00160C901D022A2048E8A7D8E
               HEX    A87DA2058E907D8EAE7DA2068E967D8E
               HEX    B47DA2078E9C7D8EBA7D804DC902D022
               HEX    A2088E8A7D8EA87DA2098E907D8EAE7D
               HEX    A20A8E967D8EB47DA20B8E9C7D8EBA7D
               HEX    8027C903D022A20C8E8A7D8EA87DA20D
               HEX    8E907D8EAE7DA20E8E967D8EB47DA20F
               HEX    8E9C7D8EBA7D800160AD987BC901D022
               HEX    A2048E8D7D8EAB7DA2058E937D8EB17D
               HEX    A2068E997D8EB77DA2078E9F7D8EBD7D
               HEX    804DC902D022A2088E8D7D8EAB7DA209
               HEX    8E937D8EB17DA20A8E997D8EB77DA20B
               HEX    8E9F7D8EBD7D8027C903D022A20C8E8D
               HEX    7D8EAB7DA20D8E937D8EB17DA20E8E99
               HEX    7D8EB77DA20F8E9F7D8EBD7D80016020
               HEX    FC7D8D05C0AD8A7D8D8A7DAD8D7D8D8D
               HEX    7DAD907D8D907DAD937D8D937DAD967D
               HEX    8D967DAD997D8D997DAD9C7D8D9C7DAD
               HEX    9F7D8D9F7DA2008D03C08D05C0BD0004
               HEX    9D0010BD00059D0011BD00069D0012BD
               HEX    00079D00138D04C08D02C0BD00049D00
               HEX    0CBD00059D000DBD00069D000EBD0007
               HEX    9D000FE8D0C120637E60
SUB7DC5        JSR    SUB7DFC
               STA    RAMRDON
               STA    RAMWRTON
               LDA    #$A0
               LDX    #$00
L7DD2          STA    $0400,X
               STA    $0500,X
               STA    $0600,X
               STA    $0700,X
               INX
               BNE    L7DD2
               STA    RAMWRTOFF
               STA    RAMRDOFF
               LDX    #$00
L7DE9          STA    $0400,X
               STA    $0500,X
               STA    $0600,X
               STA    $0700,X
               INX
               BNE    L7DE9
               JSR    SUB7E63
               RTS
SUB7DFC        LDA    $0478
               STA    $90DE
               LDA    $04F8
               STA    $90DF
               LDA    $0578
               STA    $90E0
               LDA    $05F8
               STA    $90E1
               LDA    $047C
               STA    $90E2
               LDA    $04FC
               STA    $90E3
               LDA    $057C
               STA    $90E4
               LDA    $05FC
               STA    $90E5
               LDA    $067C
               STA    $90E6
               LDA    $06FC
               STA    $90E7
               LDA    $077C
               STA    $90E8
               LDA    $0678
               STA    $90E9
               LDA    $06F8
               STA    $90EA
               LDA    $047E
               STA    $90EB
               LDA    $04FE
               STA    $90EC
               LDA    $0778
               STA    $90ED
               LDA    $07F8
               STA    $90EE
               RTS
SUB7E63        LDA    $90DE
               STA    $0478
               LDA    $90DF
               STA    $04F8
               LDA    $90E0
               STA    $0578
               LDA    $90E1
               STA    $05F8
               LDA    $90E2
               STA    $047C
               LDA    $90E3
               STA    $04FC
               LDA    $90E4
               STA    $057C
               LDA    $90E5
               STA    $05FC
               LDA    $90E6
               STA    $067C
               LDA    $90E7
               STA    $06FC
               LDA    $90E8
               STA    $077C
               LDA    $90E9
               STA    $0678
               LDA    $90EA
               STA    $06F8
               LDA    $90EB
               STA    $047E
               LDA    $90EC
               STA    $04FE
               LDA    $90ED
               STA    $0778
               LDA    $90EE
               STA    $07F8
               RTS
               HEX    A98D20EDFD60
SUB7ED0        STX    L7ED8+1
               STY    L7ED8+2
               LDX    #$00
L7ED8          LDA    $1000,X
               BEQ    L7EE3
               JSR    COUT
               INX
               BNE    L7ED8
L7EE3          RTS
               HEX    A559C902B009A9018D7B7BA9898014C9
               HEX    03F009A9028D7B7BA98C8007A9038D7B
               HEX    7BA98D8D84858DF78560CD19C010FBCD
               HEX    19C030FB8D00C0A559C902F005AD54C0
               HEX    8003AD55C060
SUB7F2A        LDX    #$28
L7F2C          DEX
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
               BNE    L7F2C
               TAX
               LDA    D8938,X
               LDX    #$28
L7F71          DEX
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
               BNE    L7F71
               RTS
SUB7FB7        LDX    #$28
L7FB9          DEX
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
               BNE    L7FB9
               TAX
               LDA    D8938,X
               LDX    #$28
L7FFE          DEX
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
               BNE    L7FFE
               RTS
               HEX    A228CA9D000C9D800C9D000D9D800D9D
               HEX    000E9D800E9D000F9D800F9D280C9DA8
               HEX    0C9D280D9DA80D9D280E9DA80E9D280F
               HEX    9DA80F9D500C9DD00C9D500D9DD00D9D
               HEX    500E9DD00E9D500F9DD00FD0B5AABD38
               HEX    89A228CA8D05C09D000C9D800C9D000D
               HEX    9D800D9D000E9D800E9D000F9D800F9D
               HEX    280C9DA80C9D280D9DA80D9D280E9DA8
               HEX    0E9D280F9DA80F9D500C9DD00C9D500D
               HEX    9DD00D9D500E9DD00E9D500F9DD00F8D
               HEX    04C0D0AF60
SUB80E9        LDA    STROBE
               LDA    TXTCLR
               STA    SET80VID
               LDA    AN3OFF
               STA    MIXCLR
               STA    KEYBD
               LDA    LOWSCR
               LDA    #$00
               JSR    SUB7F2A
               JSR    SUB8B38
               JSR    SUB7FB7
               JSR    SUB8B61
               LDA    #$01
               STA    D7B7B
               LDA    #$2F
               STA    D7B96
               STA    ALTZPOFF
               RTS
SUB811A        LDA    STROBE
               STA    KEYBD
               STA    CLR80VID
               LDA    AN3ON
               LDA    TXTSET
               LDA    LOWSCR
               JSR    $F399
               JSR    HOME
               RTS
SUB8133        LDA    #$00
               STA    D7B7F
               STA    D7B7E
               STA    $3C
               LDA    #$70
               STA    $3D
               LDA    #$FF
               STA    $3E
               LDA    #$94
               STA    $3F
               LDA    #$00
               STA    $42
               LDA    #$70
               STA    $43
               SEC
               JMP    $C311
               HEX    60
SUB8156        LDA    $51
               LDX    $58
               CMP    $58
               BCC    L8162
               STA    $58
               STX    $51
L8162          LDA    $50
               LDX    $57
               CMP    $57
               BCC    L816E
               STA    $57
               STX    $50
L816E          INC    $58
               LDA    $51
L8172          STA    $51
               JSR    SUB81DF
               INC    $51
               LDA    $51
               CMP    $58
               BCC    L8172
               RTS
SUB8180        LDA    $63
               STA    $51
               LDA    $4F
               STA    $58
               JSR    SUB81DF
               JSR    SUB8289
               LDA    $50
               LDX    $57
               STA    $57
               STX    $50
               JSR    SUB8289
               LDA    $4F
               STA    $51
               JSR    SUB81DF
               RTS
               HEX    A550EAC557900AF034A6578D957B8E94
               HEX    7BA550100464508008C9509004A94F85
               HEX    50A557100464578008C9509004A94F85
               HEX    57A551100160CD967BF003900160
SUB81DF        STA    KEYBD
               LDA    $50
               CMP    $57
               BCC    L81F7
               BEQ    L81F4
               LDX    $57
               STA    D7B95
               STX    D7B94
               BRA    L81FF
L81F4          JMP    SUB85E8
L81F7          STA    D7B94
               LDA    $57
               STA    D7B95
L81FF          SEC
               SBC    D7B94
               INC
               STA    D7B7C
               INC    D7B95
               LDA    $51
               LSR
               TAX
               LDA    D885C,X
               STA    $06
               LDA    D8900,X
               STA    $07
               LDA    $51
               BIT    #$01
               BEQ    L8221
               JMP    L8235
L8221          LDA    $53
               STA    $54
               TAX
               LDA    D8938,X
               STA    $55
               LDA    #$F0
               STA    D825B+1
               STA    D8277+1
               BRA    L824A
L8235          LDX    $53
               LDA    D8918,X
               STA    $54
               TAX
               LDA    D8938,X
               STA    $55
               LDA    #$0F
               STA    D825B+1
               STA    D8277+1
L824A          LDA    D7B94
               BIT    #$01
               BNE    L8273
               LSR
               TAY
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
D825B          AND    #$F0
               ORA    $55
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               INC    D7B94
               LDA    D7B94
               CMP    D7B95
               BCC    L824A
               RTS
L8273          LSR
               TAY
               LDA    ($06),Y
D8277          AND    #$F0
               ORA    $54
               STA    ($06),Y
               INC    D7B94
               LDA    D7B94
               CMP    D7B95
               BCC    L824A
               RTS
SUB8289        STA    KEYBD
               LDA    $51
               CMP    $58
               BCC    L829F
               BEQ    L829C
               LDX    $58
               STA    $58
               STX    $51
               BRA    L829F
L829C          JMP    SUB85E8
L829F          LDA    $58
               SEC
               SBC    $51
               INC
               STA    D7B7C
               LDA    $50
               BIT    #$01
               BEQ    L82B1
               JMP    L8355
L82B1          LSR
               TAY
               LDA    $51
               LSR
               STA    D7B7D
               LDA    $51
               BIT    #$01
               BEQ    L82F5
               LDX    D7B7D
               LDA    D885C,X
               STA    $06
               LDA    D8900,X
               STA    $07
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               TAX
               LDA    D8A38,X
               AND    #$0F
               STA    $55
               LDX    $53
               LDA    D8918,X
               ORA    $55
               TAX
               LDA    D8938,X
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               INC    D7B7D
               DEC    D7B7C
L82F5          LDA    D7B7C
               CMP    #$02
               BCC    L8325
               LDX    D7B7D
               LDA    D885C,X
               STA    $06
               LDA    D8900,X
               STA    $07
               LDX    $53
               LDA    D8928,X
               TAX
               LDA    D8938,X
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               DEC    D7B7C
               DEC    D7B7C
               INC    D7B7D
               BRA    L82F5
L8325          LDA    D7B7C
               BNE    L832B
               RTS
L832B          LDX    D7B7D
               LDA    D885C,X
               STA    $06
               LDA    D8900,X
               STA    $07
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               TAX
               LDA    D8A38,X
               AND    #$F0
               ORA    $53
               TAX
               LDA    D8938,X
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               RTS
L8355          LSR
               TAY
               LDA    $51
               LSR
               STA    D7B7D
               LDA    $51
               BIT    #$01
               BEQ    L8385
               LDX    D7B7D
               LDA    D885C,X
               STA    $06
               LDA    D8900,X
               STA    $07
               LDA    ($06),Y
               AND    #$0F
               STA    $55
               LDX    $53
               LDA    D8918,X
               ORA    $55
               STA    ($06),Y
               INC    D7B7D
               DEC    D7B7C
L8385          LDA    D7B7C
               CMP    #$02
               BCC    L83AB
               LDX    D7B7D
               LDA    D885C,X
               STA    $06
               LDA    D8900,X
               STA    $07
               LDX    $53
               LDA    D8928,X
               STA    ($06),Y
               DEC    D7B7C
               DEC    D7B7C
               INC    D7B7D
               BRA    L8385
L83AB          LDA    D7B7C
               BNE    L83B1
               RTS
L83B1          LDX    D7B7D
               LDA    D885C,X
               STA    $06
               LDA    D8900,X
               STA    $07
               LDA    ($06),Y
               AND    #$F0
               ORA    $53
               STA    ($06),Y
               RTS
SUB83C7        JSR    SUB8748
               JSR    SUB84AA
               LDA    STROBE
               LDA    D7B8F
               STA    D8525
L83D6          LDA    KEYBD
               BMI    L83DE
               JMP    L845A
L83DE          CMP    #$8D
               BNE    L83EB
               LDA    D8525
               STA    D7B8F
               JMP    L84A3
L83EB          CMP    #$A0
               BNE    L83F8
               LDA    D8525
               STA    D7B8F
               JMP    L84A3
L83F8          CMP    #$95
               BNE    L840C
               INC    D8525
               LDA    D8525
               CMP    #$10
               BNE    L8409
               STZ    D8525
L8409          JMP    L845A
L840C          CMP    #$88
               BNE    L8422
               DEC    D8525
               LDA    D8525
               CMP    #$FF
               BNE    L841F
               LDA    #$0F
               STA    D8525
L841F          JMP    L845A
L8422          CMP    #$8B
               BNE    L843D
               LDA    D8525
               SEC
               SBC    #$04
               BMI    L8434
               STA    D8525
               JMP    L845A
L8434          CLC
               ADC    #$10
               STA    D8525
               JMP    L845A
L843D          CMP    #$8A
               BNE    L845A
               LDA    D8525
               CLC
               ADC    #$04
               CMP    #$10
               BCS    L8451
               STA    D8525
               JMP    L845A
L8451          SEC
               SBC    #$10
               STA    D8525
               JMP    L845A
L845A          LDA    STROBE
               INC    $00
               LDA    $00
               BNE    L8409
               LDX    D8525
               CLC
               LDA    D8505,X
               ADC    #$35
               STA    $50
               STA    $57
               INC    $57
               INC    $57
               LDA    D8515,X
               ADC    #$17
               STA    $63
               STA    $4F
               INC    $4F
               INC    $4F
               LDA    #$0F
               STA    $53
               JSR    SUB8180
               LDA    #$64
               JSR    WAIT
               LDA    #$05
               STA    $53
               JSR    SUB8180
               LDA    #$64
               JSR    WAIT
               LDA    #$00
               STA    $53
               JSR    SUB8180
               JMP    L83D6
L84A3          LDA    STROBE
               JSR    SUB8663
               RTS
SUB84AA        LDA    #$32
               STA    $50
               LDA    #$46
               STA    $57
               LDA    #$14
               STA    $51
               LDA    #$28
               STA    $58
               LDA    #$00
               STA    $53
               JSR    SUB8156
               INC    $50
               DEC    $57
               LDA    #$15
               STA    $63
               LDA    #$27
               STA    $4F
               LDA    #$0F
               STA    $53
               JSR    SUB8180
               LDX    #$00
L84D6          CLC
               LDA    D8505,X
               ADC    #$36
               STA    $50
               LDA    D8515,X
               ADC    #$18
               STA    $51
               LDA    D84F5,X
               STA    $53
               PHX
               JSR    SUB85E8
               PLX
               INX
               CPX    #$10
               BNE    L84D6
               RTS
D84F5          HEX    000102030405060708090A0B0C0D0E0F
D8505          HEX    0004080C0004080C0004080C0004080C
D8515          HEX    0000000004040404080808080C0C0C0C
D8525          HEX    00
SUB8526        LDA    D7B96
               CMP    #$2F
               BEQ    L8545
               LDA    TXTCLR
               STA    SET80VID
               LDA    AN3OFF
               STA    MIXCLR
               STA    KEYBD
               LDA    LOWSCR
               LDA    #$2F
               STA    D7B96
               RTS
L8545          LDA    MIXSET
               LDA    #$A0
               JSR    SUB8B38
               LDA    #$27
               STA    D7B96
               LDA    #$50
               STA    $21
               LDA    #$14
               STA    $22
               LDA    #$15
               JSR    $FB5B
               RTS
SUB8560        LDX    #$00
L8562          LDA    $00,X
               STA    $0C00,X
               INX
               BNE    L8562
               RTS
SUB856B        LDX    #$00
L856D          LDA    $0C00,X
               STA    $00,X
               INX
               BNE    L856D
               RTS
SUB8576        STA    KEYBD
               LDA    $51
               LSR
               TAX
               LDA    D885C,X
               STA    $06
               LDA    D8900,X
               STA    $07
               LDA    $50
               BIT    #$01
               BNE    L85B5
               LSR
               TAY
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               TAX
               LDA    D8A38,X
               STA    $59
               LDA    $51
               AND    #$01
               BEQ    L85AE
               LDA    $59
               AND    #$F0
               LSR
               LSR
               LSR
               LSR
               STA    $59
               RTS
L85AE          LDA    $59
               AND    #$0F
               STA    $59
               RTS
L85B5          LSR
               TAY
               LDA    ($06),Y
               STA    $59
               LDA    $51
               AND    #$01
               BEQ    L85CC
               LDA    $59
               AND    #$F0
               LSR
               LSR
               LSR
               LSR
               STA    $59
               RTS
L85CC          LDA    $59
               AND    #$0F
               STA    $59
               RTS
               HEX    8D00C0
SUB85D6        LDA    $50
               NOP
               CMP    #$50
               BCC    L85DE
               RTS
L85DE          LDA    $51
               CMP    D7B96
               BEQ    SUB85E8
               BCC    SUB85E8
               RTS
SUB85E8        LDA    $53
               STA    $54
               LDA    $51
               LSR
               TAX
               LDA    D885C,X
               STA    $06
               LDA    D8900,X
               STA    $07
               LDX    $53
               LDA    $50
               BIT    #$01
               BNE    L863D
               LSR
               TAY
               STA    RAMRDON
               LDA    ($06),Y
               STA    RAMRDOFF
               STA    $55
               LDA    D8938,X
               STA    $54
               LDA    $51
               AND    #$01
               BEQ    L862A
               LDA    $55
               AND    #$0F
               STA    $55
               LDA    D8918,X
               TAX
               LDA    D8938,X
               STA    $54
               BRA    L8630
L862A          LDA    $55
               AND    #$F0
               STA    $55
L8630          LDA    $54
               ORA    $55
               STA    RAMWRTON
               STA    ($06),Y
               STA    RAMWRTOFF
               RTS
L863D          LSR
               TAY
               LDA    ($06),Y
               STA    $55
               LDA    $51
               AND    #$01
               BEQ    L8656
               LDA    $55
               AND    #$0F
               STA    $55
               LDA    D8918,X
               STA    $54
               BRA    L865C
L8656          LDA    $55
               AND    #$F0
               STA    $55
L865C          LDA    $54
               ORA    $55
               STA    ($06),Y
               RTS
SUB8663        STA    RAMRDON
               STA    RAMWRTOFF
               LDX    #$00
L866B          LDA    $A000,X
               STA    $0400,X
               LDA    $A100,X
               STA    $0500,X
               LDA    $A200,X
               STA    $0600,X
               LDA    $A300,X
               STA    $0700,X
               INX
               BNE    L866B
               STA    RAMWRTON
               LDX    #$00
L868B          LDA    $A400,X
               STA    $0400,X
               LDA    $A500,X
               STA    $0500,X
               LDA    $A600,X
               STA    $0600,X
               LDA    $A700,X
               STA    $0700,X
               INX
               BNE    L868B
               STA    RAMWRTOFF
               STA    RAMRDOFF
               RTS
SUB86AD        STA    KEYBD
               STA    RAMWRTON
               LDX    #$00
L86B5          TXA
               STZ    $60
               CLC
               ADC    #$10
               STA    $61
               LDA    #$00
               LDY    #$00
L86C1          STA    ($60),Y
               INY
               CPY    #$50
               BCC    L86C1
               INX
               CPX    #$30
               BCC    L86B5
               STA    RAMWRTOFF
               STZ    $60
               LDA    #$40
               STA    $61
               LDA    D7BA2
               CMP    D7BA1
               BCS    L86E7
               LDX    D7BA1
               STA    D7BA1
               STX    D7BA2
L86E7          LDA    D7BA4
               CMP    D7BA3
               BCS    L86F8
               LDX    D7BA3
               STA    D7BA3
               STX    D7BA4
L86F8          LDA    D7BA2
               SEC
               SBC    D7BA1
               STA    D7BAA
               INC    D7BAA
               LDA    D7BA4
               SEC
               SBC    D7BA3
               STA    D7BAB
               INC    D7BAB
               LDX    #$00
L8714          TXA
               CLC
               ADC    #$10
               STA    $61
               LDY    #$00
L871C          TYA
               CLC
               ADC    D7BA1
               STA    $50
               TXA
               CLC
               ADC    D7BA3
               STA    $51
               PHX
               PHY
               JSR    SUB8576
               LDA    $59
               PLY
               PLX
               STA    RAMWRTON
               STA    ($60),Y
               STA    RAMWRTOFF
               INY
               CPY    D7BAA
               BCC    L871C
               INX
               CPX    D7BAB
               BCC    L8714
               RTS
SUB8748        STA    KEYBD
               STA    RAMRDOFF
               STA    RAMWRTON
               LDX    #$00
L8753          LDA    $0400,X
               STA    $A000,X
               LDA    $0500,X
               STA    $A100,X
               LDA    $0600,X
               STA    $A200,X
               LDA    $0700,X
               STA    $A300,X
               INX
               BNE    L8753
               STA    RAMRDON
               LDX    #$00
L8773          LDA    $0400,X
               STA    $A400,X
               LDA    $0500,X
               STA    $A500,X
               LDA    $0600,X
               STA    $A600,X
               LDA    $0700,X
               STA    $A700,X
               INX
               BNE    L8773
               STA    RAMWRTOFF
               STA    RAMRDOFF
               RTS
SUB8795        STA    KEYBD
               STA    RAMRDOFF
               LDX    #$00
L879D          LDA    $0400,X
               STA    $1800,X
               LDA    $0500,X
               STA    $1900,X
               LDA    $0600,X
               STA    $1A00,X
               LDA    $0700,X
               STA    $1B00,X
               INX
               BNE    L879D
               STA    RAMRDON
               LDX    #$00
L87BD          LDA    $0400,X
               STA    $1C00,X
               LDA    $0500,X
               STA    $1D00,X
               LDA    $0600,X
               STA    $1E00,X
               LDA    $0700,X
               STA    $1F00,X
               INX
               BNE    L87BD
               STA    RAMRDOFF
               RTS
SUB87DC        STA    KEYBD
               STA    RAMRDOFF
               LDX    #$00
L87E4          LDA    $1800,X
               STA    $0400,X
               LDA    $1900,X
               STA    $0500,X
               LDA    $1A00,X
               STA    $0600,X
               LDA    $1B00,X
               STA    $0700,X
               INX
               BNE    L87E4
               STA    RAMWRTON
               LDX    #$00
L8804          LDA    $1C00,X
               STA    $0400,X
               LDA    $1D00,X
               STA    $0500,X
               LDA    $1E00,X
               STA    $0600,X
               LDA    $1F00,X
               STA    $0700,X
               INX
               BNE    L8804
               STA    RAMWRTOFF
               RTS
SUB8823        JSR    SUB8748
               LDX    #$00
L8828          TXA
               CLC
               ADC    #$10
               STA    $61
               LDY    #$00
L8830          STA    RAMRDON
               LDA    ($60),Y
               STA    RAMRDOFF
               STA    $53
               TYA
               CLC
               ADC    D7BAC
               STA    $50
               TXA
               CLC
               ADC    D7BAD
               STA    $51
               PHX
               PHY
               JSR    SUB85D6
               PLY
               PLX
               INY
               CPY    D7BAA
               BCC    L8830
               INX
               CPX    D7BAB
               BCC    L8828
               RTS
D885C          HEX    008000800080008028A828A828A828A8
               HEX    50D050D050D050D00000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000
D8900          HEX    04040505060607070404050506060707
               HEX    0404050506060707
D8918          HEX    00102030405060708090A0B0C0D0E0F0
D8928          HEX    00112233445566778899AABBCCDDEEFF
D8938          HEX    00080109020A030B040C050D060E070F
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
D8A38          HEX    00020406080A0C0E01030507090B0D0F
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
SUB8B38        LDX    #$28
L8B3A          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L8B3A
               LDX    #$28
L8B4B          DEX
               STA    RAMWRTON
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    RAMWRTOFF
               BNE    L8B4B
               RTS
SUB8B61        LDX    #$28
L8B63          DEX
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               BNE    L8B63
               LDX    #$28
L8B74          DEX
               STA    RAMWRTON
               STA    $0A50,X
               STA    $0AD0,X
               STA    $0B50,X
               STA    $0BD0,X
               STA    RAMWRTOFF
               BNE    L8B74
               RTS
               HEX    A200A9009D000C9D000D9D000E9D000F
               HEX    8D05C09D000C9D000D9D000E9D000F8D
               HEX    04C0E8D0DF6000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    00000000000000000000000000000000
               HEX    000000000000080809090A0A0B0B0808
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
               HEX    00000000000000000000000000000000
               HEX    0000000000000C0C0D0D0E0E0F0F0C0C
               HEX    0D0D0E0E0F0F0C0C0D0D0E0E0F0F
SUB8D18        LDA    #$00
               STA    $08
L8D1C          LDA    #$07
               STA    $0391
               ORA    #$C0
               STA    $09
               LDY    #$04
               LDX    #$02
L8D29          LDA    ($08),Y
               STA    $00
               LDA    ($08),Y
               SEC
               SBC    $00
               CMP    #$F8
               BEQ    L8D3E
               CMP    #$F9
               BEQ    L8D3E
               CMP    #$F7
               BNE    L8D46
L8D3E          DEX
               BNE    L8D29
               INX
L8D42          STX    $0310
               RTS
L8D46          DEC    L8D1C+1
               BNE    L8D1C
               LDX    #$00
               BEQ    L8D42
SUB8D4F        LDA    $09
               STA    D8DC8+2
               STA    D8DCB+2
               STA    D8DCE+2
               STA    D8DD1+2
               STA    D8DD6+2
               STA    D8DDB+2
               STA    D8DE0+2
               STA    D8DE5+2
               STA    D8E1F+2
               STA    D8E24+2
               STA    D8E27+2
               STA    D8E2C+2
               STA    D8E31+2
               STA    D8E3A+2
               STA    D8E3F+2
               STA    D8E42+2
               STA    D8E47+2
               STA    D8E4C+2
               STA    D8DFF+2
               STA    D8E04+2
               STA    D8E09+2
               STA    D8E0C+2
               STA    D8E11+2
               STA    D8E16+2
               STA    L8FDF+2
               STA    D8FE2+2
               STA    D8FE7+2
               STA    D8FEA+2
               STA    D8FEF+2
               STA    D8FF2+2
               STA    D8FF5+2
               STA    D8FF8+2
               STA    D8FFD+2
               STA    D9000+2
               STA    D9003+2
               STA    D9006+2
               STA    SUB8E1A+2
               STA    SUB8E35+2
               STA    D8FBB+2
               LDA    #$FF
D8DC8          STA    $C402
D8DCB          STA    $C403
D8DCE          STA    $C482
D8DD1          STA    $C483
SUB8DD4        LDA    #$00
D8DD6          STA    $C400
               LDA    #$04
D8DDB          STA    $C400
SUB8DDE        LDA    #$00
D8DE0          STA    $C480
               LDA    #$04
D8DE5          STA    $C480
SUB8DE8        LDY    #$0E
               LDX    #$00
L8DEC          JSR    SUB8E35
               DEY
               BPL    L8DEC
SUB8DF2        LDY    #$0E
               LDX    #$00
L8DF6          JSR    SUB8E1A
               DEY
               BPL    L8DF6
               SEI
               LDA    #$40
D8DFF          STA    $C40B
               LDA    #$7F
D8E04          STA    $C40E
               LDA    #$C0
D8E09          STA    $C40D
D8E0C          STA    $C40E
               LDA    #$E7
D8E11          STA    $C404
               LDA    #$4F
D8E16          STA    $C405
               RTS
SUB8E1A        STY    $C401
               LDA    #$07
D8E1F          STA    $C400
               LDA    #$04
D8E24          STA    $C400
D8E27          STX    $C401
               LDA    #$06
D8E2C          STA    $C400
               LDA    #$04
D8E31          STA    $C400
               RTS
SUB8E35        STY    $C481
               LDA    #$07
D8E3A          STA    $C480
               LDA    #$04
D8E3F          STA    $C480
D8E42          STX    $C481
               LDA    #$06
D8E47          STA    $C480
               LDA    #$04
D8E4C          STA    $C480
               RTS
SUB8E50        LDA    $0392
               CMP    #$FF
               BEQ    L8E7B
               CMP    #$EA
               BEQ    L8E6A
               CMP    #$38
               BEQ    L8E6A
               LDA    #$B6
               STA    $03FE
               LDA    #$8F
               STA    $03FF
               RTS
L8E6A          LDA    $C083
               LDA    $C083
               LDA    #$B6
               STA    $FFFE
               LDA    #$8F
               STA    $FFFF
               RTS
L8E7B          LDA    #$C0
               STA    $03FE
               LDA    #$03
               STA    $03FF
               LDA    #$AD
               STA    $03C0
               LDA    #$83
               STA    $03C1
               LDA    #$C0
               STA    $03C2
               LDA    #$AD
               STA    $03C3
               LDA    #$83
               STA    $03C4
               LDA    #$C0
               STA    $03C5
               LDA    #$4C
               STA    $03C6
               LDA    #$B6
               STA    $03C7
               LDA    #$8F
               STA    $03C8
               RTS
SUB8EB3        LDA    #$FF
               STA    $07
               LDA    $FBB3
               CMP    #$06
               BEQ    L8EC6
               STA    $0392
               LDA    #$DF
               STA    $07
               RTS
L8EC6          LDA    $FBC0
               BEQ    L8EF7
               SEC
               JSR    $FE1F
               BCS    L8EF1
               LDA    #$FF
               STA    $0392
               LDA    $C036
               AND    #$7F
               STA    $C036
               LDA    $C034
               AND    #$F0
               STA    $C034
               LDA    $C022
               AND    #$F0
               ORA    #$F0
               STA    $C022
               RTS
L8EF1          LDA    #$7F
               STA    $0392
               RTS
L8EF7          STA    $0392
               RTS
SUB8EFB        LDA    #$00
               BRA    L8F01
               HEX    F005
L8F01          INC
               HEX    EB3AEB1A8D980360
SUB8F0A        LDA    #$5A
               STA    AN1OFF
               STA    AN1OFF
               STA    AN1OFF
               STA    AN1OFF
               LDX    #$00
L8F1A          LDA    D8F20,X
               INX
               BNE    L8F1A
D8F20          LDA    AN2OFF
               EOR    #$FF
               STA    AN2OFF
               CMP    AN2OFF
               BNE    L8F47
               EOR    #$FF
               STA    AN2OFF
               CMP    AN2OFF
               BNE    L8F47
               LDA    #$00
               STA    AN1OFF
               LDA    #$A5
               STA    AN1OFF
               LDA    #$01
               STA    $0394
               RTS
L8F47          LDA    #$00
               STA    $0394
               RTS
SUB8F4D        LDA    $0392
               LDX    #$00
               CMP    #$7F
               BEQ    L8F58
               BNE    L8F89
L8F58          LDY    #$04
               LDA    #$6A
L8F5C          STA    $C06A
               DEY
               BNE    L8F5C
               LDA    #$00
               STA    $C06B
               LDY    $C06B
               CPY    #$80
               BNE    L8F89
               LDA    $C06D
               STA    $039A
               LDA    #$80
               STA    $C06D
               LDA    #$09
               STA    $C06D
               LDA    #$A6
               STA    $C06A
               LDA    #$01
               STA    $0395
               RTS
L8F89          TXA
               STA    $0395
               RTS
               HEX    AD83C0AD83C0AD00D0EE00D0CD00D0F0
               HEX    0BCE00D0A9018D96034CAF8FA9008D96
               HEX    03AD81C060A90760
D8FB6          PHP
               SEI
               PHA
               PHX
               PHY
D8FBB          BIT    $C404
               LDA    $7B
D8FC0          BEQ    L8FC5
               JMP    L900E
L8FC5          JSR    SUB65AD
               LDA    $7C
               BEQ    L8FD4
               JSR    SUB9013
               JMP    L900E
               HEX    A9
D8FD3          HEX    00
L8FD4          TAX
L8FD5          LDA    $64,X
               CPX    #$0D
               BNE    L8FDF
               CMP    #$FF
               BEQ    L900E
L8FDF          STX    $C401
D8FE2          STX    $C481
               LDY    #$07
D8FE7          STY    $C400
D8FEA          STY    $C480
               LDY    #$04
D8FEF          STY    $C400
D8FF2          STY    $C480
D8FF5          STA    $C401
D8FF8          STA    $C481
               LDA    #$06
D8FFD          STA    $C400
D9000          STA    $C480
D9003          STY    $C400
D9006          STY    $C480
               INX
               CPX    #$0E
               BMI    L8FD5
L900E          PLY
               PLX
               PLA
               PLP
               RTI
SUB9013        LDX    #$00
               LDA    #$00
               STA    $7B
               STA    $7C
               STA    $7D
               STA    SUB6551+1
               STA    L65B1+1
               STA    SUB65AD+1
L9026          STA    $64,X
               INX
               CPX    #$16
               BNE    L9026
               LDX    #$00
L902F          STA    $80,X
               INX
               CPX    #$78
               BNE    L902F
               RTS
SUB9037        LDX    #$00
               LDA    $63
               STA    $51
L903D          LDA    $62
               STA    $50
               PHX
D9042          LDA    D90AC,X
               STA    D907C
               AND    #$80
               BEQ    L904F
               JSR    SUB85E8
L904F          INC    $50
               LDA    D907C
               AND    #$40
               BEQ    L905B
               JSR    SUB85E8
L905B          INC    $50
               LDA    D907C
               AND    #$20
               BEQ    L9067
               JSR    SUB85E8
L9067          INC    $50
               LDA    D907C
               AND    #$10
               BEQ    L9073
               JSR    SUB85E8
L9073          INC    $51
               PLX
               INX
               CPX    #$05
               BNE    L903D
               RTS
D907C          HEX    00
SUB907D        ASL
               TAX
               LDA    D9098,X
               STA    D9042+1
               INX
               LDA    D9098,X
               STA    D9042+2
               JSR    SUB9037
               RTS
               HEX    A562186904856260
D9098          HEX    AC90B190B690BB90C090C590CA90CF90
               HEX    D490D990
D90AC          HEX    60A0A0A0C02060202020C0204080E0C0
               HEX    204020C0A0A0602020E0806020E06080
               HEX    E0A0C0E020404040E0A040A0E0E0A060
               HEX    2020

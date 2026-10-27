************************************************************
* ffedit - AUXINIT (disassembly)
*
* Disassembled from the original binary (1177 bytes, $9000-$9498).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../../README.txt for attribution and terms.
* Load address: $9000. Entry point(s): $9000, $9061, $9400 (65C02 code allowed: XC).
************************************************************

               XC
               ORG    $9000

RAMRDOFF       EQU    $C002
RAMRDON        EQU    $C003
RAMWRTOFF      EQU    $C004
RAMWRTON       EQU    $C005
ALTZPOFF       EQU    $C008
ALTZPON        EQU    $C009
AN1OFF         EQU    $C05A
AN2OFF         EQU    $C05C

START          JSR    SUB9077
               JSR    SUB9235
               JSR    SUB927D
               JSR    SUB928C
               JSR    SUB92CF
               JSR    SUB9094
               LDA    $0390
               STA    D903D
               BEQ    L9020
               JSR    SUB90CB
               JSR    SUB91D2
L9020          STA    RAMRDON
               STA    RAMWRTON
               STA    ALTZPON
               JSR    SUB9475
               JSR    $94F7
               STA    ALTZPOFF
               STA    RAMWRTOFF
               STA    RAMRDOFF
               STZ    D903C
               RTS
D903C          HEX    00
D903D          HEX    009C3C9078206A912074918D03C08D05
               HEX    C08D09C020759420F0948D08C08D04C0
               HEX    8D02C060
D9061          LDA    D903C
               BEQ    L9072
               STZ    D903C
               SEI
               JSR    SUB916A
               JSR    SUB9174
               BRA    L9076
L9072          INC    D903C
               CLI
L9076          RTS
SUB9077        LDA    #$00
               STA    $3C
               LDA    #$90
               STA    $3D
               LDA    #$FF
               STA    $3E
               LDA    #$93
               STA    $3F
               LDA    #$00
               STA    $42
               LDA    #$90
               STA    $43
               SEC
               JMP    $C311
               HEX    60
SUB9094        LDA    #$00
               STA    $08
L9098          LDA    #$07
               STA    $0391
               ORA    #$C0
               STA    $09
               LDY    #$04
               LDX    #$02
L90A5          LDA    ($08),Y
               STA    $E0
               LDA    ($08),Y
               SEC
               SBC    $E0
               CMP    #$F8
               BEQ    L90BA
               CMP    #$F9
               BEQ    L90BA
               CMP    #$F7
               BNE    L90C2
L90BA          DEX
               BNE    L90A5
               INX
L90BE          STX    $0390
               RTS
L90C2          DEC    L9098+1
               BNE    L9098
               LDX    #$00
               BEQ    L90BE
SUB90CB        LDA    $09
               STA    D914A+2
               STA    D914D+2
               STA    D9150+2
               STA    D9153+2
               STA    D9158+2
               STA    D915D+2
               STA    D9162+2
               STA    D9167+2
               STA    D91A1+2
               STA    D91A6+2
               STA    D91A9+2
               STA    D91AE+2
               STA    D91B3+2
               STA    D91BC+2
               STA    D91C1+2
               STA    D91C4+2
               STA    D91C9+2
               STA    D91CE+2
               STA    D9181+2
               STA    D9186+2
               STA    D918B+2
               STA    D918E+2
               STA    D9193+2
               STA    D9198+2
               STA    RAMWRTON
               STA    L9437+2
               STA    D943A+2
               STA    D943F+2
               STA    D9442+2
               STA    D9447+2
               STA    D944A+2
               STA    D944D+2
               STA    D9450+2
               STA    D9455+2
               STA    D9458+2
               STA    D945B+2
               STA    D945E+2
               STA    RAMWRTOFF
               STA    SUB919C+2
               STA    SUB91B7+2
               STA    D940A+2
               LDA    #$FF
D914A          STA    $C402
D914D          STA    $C403
D9150          STA    $C482
D9153          STA    $C483
               LDA    #$00
D9158          STA    $C400
               LDA    #$04
D915D          STA    $C400
               LDA    #$00
D9162          STA    $C480
               LDA    #$04
D9167          STA    $C480
SUB916A        LDY    #$0E
               LDX    #$00
L916E          JSR    SUB91B7
               DEY
               BPL    L916E
SUB9174        LDY    #$0E
               LDX    #$00
L9178          JSR    SUB919C
               DEY
               BPL    L9178
               SEI
               LDA    #$40
D9181          STA    $C40B
               LDA    #$7F
D9186          STA    $C40E
               LDA    #$C0
D918B          STA    $C40D
D918E          STA    $C40E
               LDA    #$E7
D9193          STA    $C404
               LDA    #$4F
D9198          STA    $C405
               RTS
SUB919C        STY    $C401
               LDA    #$07
D91A1          STA    $C400
               LDA    #$04
D91A6          STA    $C400
D91A9          STX    $C401
               LDA    #$06
D91AE          STA    $C400
               LDA    #$04
D91B3          STA    $C400
               RTS
SUB91B7        STY    $C481
               LDA    #$07
D91BC          STA    $C480
               LDA    #$04
D91C1          STA    $C480
D91C4          STX    $C481
               LDA    #$06
D91C9          STA    $C480
               LDA    #$04
D91CE          STA    $C480
               RTS
SUB91D2        LDA    $0392
               CMP    #$FF
               BEQ    L91FD
               CMP    #$EA
               BEQ    L91EC
               CMP    #$38
               BEQ    L91EC
               LDA    #$00
               STA    $03FE
               LDA    #$94
               STA    $03FF
               RTS
L91EC          LDA    $C083
               LDA    $C083
               LDA    #$00
               STA    $FFFE
               LDA    #$94
               STA    $FFFF
               RTS
L91FD          LDA    #$C0
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
               LDA    #$00
               STA    $03C7
               LDA    #$94
               STA    $03C8
               RTS
SUB9235        LDA    #$FF
               STA    $07
               LDA    $FBB3
               CMP    #$06
               BEQ    L9248
               STA    $0392
               LDA    #$DF
               STA    $07
               RTS
L9248          LDA    $FBC0
               BEQ    L9279
               SEC
               JSR    $FE1F
               BCS    L9273
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
L9273          LDA    #$7F
               STA    $0392
               RTS
L9279          STA    $0392
               RTS
SUB927D        LDA    #$00
               BRA    L9283
               HEX    F005
L9283          INC
               HEX    EB3AEB1A8D980360
SUB928C        LDA    #$5A
               STA    AN1OFF
               STA    AN1OFF
               STA    AN1OFF
               STA    AN1OFF
               LDX    #$00
L929C          LDA    D92A2,X
               INX
               BNE    L929C
D92A2          LDA    AN2OFF
               EOR    #$FF
               STA    AN2OFF
               CMP    AN2OFF
               BNE    L92C9
               EOR    #$FF
               STA    AN2OFF
               CMP    AN2OFF
               BNE    L92C9
               LDA    #$00
               STA    AN1OFF
               LDA    #$A5
               STA    AN1OFF
               LDA    #$01
               STA    $0394
               RTS
L92C9          LDA    #$00
               STA    $0394
               RTS
SUB92CF        LDA    $0392
               LDX    #$00
               CMP    #$7F
               BEQ    L92DA
               BNE    L930B
L92DA          LDY    #$04
               LDA    #$6A
L92DE          STA    $C06A
               DEY
               BNE    L92DE
               LDA    #$00
               STA    $C06B
               LDY    $C06B
               CPY    #$80
               BNE    L930B
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
L930B          TXA
               STA    $0395
               RTS
               HEX    AD83C0AD83C0AD00D0EE00D0CD00D0F0
               HEX    0BCE00D0A9018D96034C3193A9008D96
               HEX    03AD81C060A907600000000000000000
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
D9400          PHP
               SEI
               PHA
               PHX
               PHY
               NOP
               NOP
               NOP
               NOP
               NOP
D940A          BIT    $C404
               STA    RAMRDON
               STA    RAMWRTON
               STA    ALTZPON
               LDA    $7B
               BEQ    L941D
               JMP    L9466
L941D          JSR    $9A06
               LDA    $7C
               BEQ    L942C
               JSR    SUB9475
               JMP    L9466
               HEX    A900
L942C          TAX
L942D          LDA    $64,X
               CPX    #$0D
               BNE    L9437
               CMP    #$FF
               BEQ    L9466
L9437          STX    $C401
D943A          STX    $C481
               LDY    #$07
D943F          STY    $C400
D9442          STY    $C480
               LDY    #$04
D9447          STY    $C400
D944A          STY    $C480
D944D          STA    $C401
D9450          STA    $C481
               LDA    #$06
D9455          STA    $C400
D9458          STA    $C480
D945B          STY    $C400
D945E          STY    $C480
               INX
               CPX    #$0E
               BMI    L942D
L9466          STA    ALTZPOFF
               STA    RAMWRTOFF
               STA    RAMRDOFF
               PLY
               PLX
               PLA
               PLP
               NOP
               RTI
SUB9475        LDX    #$00
               LDA    #$00
               STA    $7B
               STA    $7C
               STA    $7D
               STA    $99AB
               STA    $9A0B
               STA    $9A07
L9488          STA    $64,X
               INX
               CPX    #$16
               BNE    L9488
               LDX    #$00
L9491          STA    $80,X
               INX
               CPX    #$78
               BNE    L9491
               RTS

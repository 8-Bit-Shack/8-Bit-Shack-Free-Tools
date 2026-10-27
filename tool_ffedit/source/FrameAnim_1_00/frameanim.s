************************************************************
* ffedit - FRAMEANIM (disassembly)
*
* Disassembled from the original binary (651 bytes, $7000-$728A).
* Reconstructed source: labels are generated, comments are minimal.
* Bytes the disassembler could not prove to be code are emitted as HEX/ASC data.
* Original program by its authors; see ../../README.txt for attribution and terms.
* Load address: $7000. Entry point(s): $7000, $700D (65C02 code allowed: XC).
************************************************************

               XC
               ORG    $7000

KEYBD          EQU    $C000
RAMWRTOFF      EQU    $C004
RAMWRTON       EQU    $C005
ALTZPOFF       EQU    $C008
CLR80VID       EQU    $C00C
SET80VID       EQU    $C00D
STROBE         EQU    $C010
RDVBL          EQU    $C019
TXTCLR         EQU    $C050
TXTSET         EQU    $C051
MIXCLR         EQU    $C052
LOWSCR         EQU    $C054
AN3OFF         EQU    $C05E
AN3ON          EQU    $C05F
HOME           EQU    $FC58
WAIT           EQU    $FCA8

START          BRK
D7001          HEX    00
D7002          HEX    00
D7003          HEX    20283038404850586068
D700D          JSR    SUB709B
               LDA    START
               STA    D7056
               LDA    STROBE
               LDA    #$29
               SEC
               SBC    D7002
               ASL
               STA    D7057
L7023          JSR    SUB7090
               JSR    SUB7058
               LDA    KEYBD
               BMI    L704F
               LDX    D7057
L7031          LDA    #$14
               JSR    WAIT
               DEX
               BNE    L7031
               INC    D7056
               LDA    D7056
               CMP    D7001
               BCC    L7023
               BEQ    L7023
               LDA    START
               STA    D7056
               JMP    L7023
L704F          LDA    STROBE
               JSR    SUB70BC
               RTS
D7056          HEX    00
D7057          HEX    00
SUB7058        LDX    D7056
               LDA    D7003,X
               STA    $61
               CLC
               ADC    #$04
               STA    $07
               STZ    $60
               STZ    $06
               LDX    #$04
L706B          LDY    #$00
               STX    D7075+2
               STX    D707D+2
L7073          LDA    ($60),Y
D7075          STA    $0400,Y
               LDA    ($06),Y
               STA    RAMWRTON
D707D          STA    $0400,Y
               STA    RAMWRTOFF
               INY
               BNE    L7073
               INC    $61
               INC    $07
               INX
               CPX    #$08
               BNE    L706B
               RTS
SUB7090        CMP    RDVBL
               BPL    SUB7090
L7095          CMP    RDVBL
               BMI    L7095
               RTS
SUB709B        LDA    STROBE
               LDA    TXTCLR
               STA    SET80VID
               LDA    AN3OFF
               STA    MIXCLR
               STA    KEYBD
               LDA    LOWSCR
               LDA    #$00
               JSR    SUB70D5
               JSR    SUB7162
               STA    ALTZPOFF
               RTS
SUB70BC        LDA    STROBE
               STA    KEYBD
               STA    CLR80VID
               LDA    AN3ON
               LDA    TXTSET
               LDA    LOWSCR
               JSR    $F399
               JSR    HOME
               RTS
SUB70D5        LDX    #$28
L70D7          DEX
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
               BNE    L70D7
               TAX
               LDA    D718B,X
               LDX    #$28
L711C          DEX
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
               BNE    L711C
               RTS
SUB7162        LDX    #$28
L7164          DEX
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               BNE    L7164
               LDX    #$28
L7175          DEX
               STA    RAMWRTON
               STA    $0650,X
               STA    $06D0,X
               STA    $0750,X
               STA    $07D0,X
               STA    RAMWRTOFF
               BNE    L7175
               RTS
D718B          HEX    00080109020A030B040C050D060E070F
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

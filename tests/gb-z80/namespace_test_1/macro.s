
        .section "someSection" free
someLabel:
someLabel2:
-:      
        ret
        jr -
        .ends

-:
        ret
        jr -
        
        .macro someMacro
        call someLabel2+1
        .endm

        .macro IncrementHELLOMOTO
        .redefine HELLOMOTO \1+1
        .endm

        .define HIYA 1
        .db HIYA, HIYA+1
        .export HIYA

        .macro DefineYASS
        .define YASS 1
        .export YASS
        .endm
        
        .include "nop.s"
        
macro:
        .incbin "macro.s" fsize macroSize
        .export macroSize

        .define HELLOMOTOS 1
        .export HELLOMOTOS

        .define TEMPURA -2
        .export TEMPURA
        

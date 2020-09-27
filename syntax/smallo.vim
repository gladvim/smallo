" Vim syntax file
" Language: SmallO
" Maintainer: Viktor A. Rozenko Voitenko

if exists("b:current_syntax")
    finish
endif

syn keyword smalloOpcode put add sub mul div mod gth lth geq leq eq
syn keyword smalloOpcode neq ini ins out outl nl con sti not and or
syn keyword smalloOpcode jump jmpt jmpf br brt brf back err end

syn match smalloLabel '.+:'
syn match smalloComment '@.*$'
syn match smalloInteger '-?[1-9]\d*'
syn match smalloEscapeSequence contained '\\[nrt"]'
syn region smalloString start='"' end='"' contains=smalloEscapeSequence
syn region smalloInclude start='>"' end='"'

let b:current_syntax = "smallo"

hi def link smalloInclude           PreProc
hi def link smalloLabel             PreProc
hi def link smalloOpcode            Statement
hi def link smalloString            Constant
hi def link smalloEscapeSequence    SpecialChar
hi def link smalloInteger           Constant
hi def link smalloComment           Comment

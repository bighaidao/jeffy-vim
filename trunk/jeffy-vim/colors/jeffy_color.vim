"===============================================================================
"        File: jeffy_color.vim
" Description: Color scheme for Jeffy.
"      Author: Jeffy Du (jeffy.du@gmail.com)
"        Date: 2009-10-26
"    Modified: 2009-10-26 | v0.1 | Jeffy Du (jeffy.du@gmail.com)
"                  Initial version
"        TODO:
"===============================================================================


"===============================================================================
" Global Initializations
"===============================================================================

"-------------------------------------------------------------------------------
" clear old syntax
"-------------------------------------------------------------------------------
set bg=light
hi clear
if exists("syntax_on")
    syntax reset
endif
"-------------------------------------------------------------------------------
" external colorscheme name
"-------------------------------------------------------------------------------
let g:colors_name="jeffy_color"


"===============================================================================
" Color Settings
"===============================================================================
"{{{
hi Normal     guifg=lightgrey guibg=black ctermfg=lightgrey ctermbg=black
hi Visual     guifg=white     guibg=black ctermfg=white     ctermbg=black
hi Folded     guifg=darkgrey  guibg=black ctermfg=darkgrey  ctermbg=black gui=bold cterm=bold
hi CursorLine guifg=none      guibg=darkgrey ctermfg=none   ctermbg=darkgrey gui=bold cterm=bold
hi Pmenu      guifg=black     guibg=yellow ctermfg=black ctermbg=yellow
hi PmenuSel   guifg=blue guibg=green ctermfg=blue ctermbg=green

"}}}

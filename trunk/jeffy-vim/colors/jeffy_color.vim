"===============================================================================
"        File: jeffy_color.vim
" Description: Color scheme for Jeffy.
"      Author: Jeffy Du (jeffy.du@gmail.com)
"        Date: 2009-10-26
"    Modified: 2009-10-26 | v0.1 | Jeffy Du (jeffy.du@gmail.com)
"                  Initial version
"===============================================================================


"===============================================================================
" Global Initializations
"===============================================================================
"{{{
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
"}}}

"===============================================================================
" Color Settings
"===============================================================================
"{{{
hi Normal     guifg=lightgrey guibg=black    ctermfg=lightgrey ctermbg=black
hi Visual     guifg=white     guibg=black    ctermfg=white     ctermbg=black
hi Folded     guifg=yellow    guibg=black    ctermfg=yellow    ctermbg=black  gui=bold cterm=bold
hi CursorLine                 guibg=black                      ctermbg=black  gui=bold cterm=bold
hi Pmenu      guifg=black     guibg=yellow   ctermfg=black     ctermbg=yellow
hi PmenuSel   guifg=white     guibg=green    ctermfg=white     ctermbg=green  gui=bold cterm=bold
"}}}

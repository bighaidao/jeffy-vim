" .vimrc - Vim configuration file.
" Maintainer: Jeffy Du <jeffy.du@gmail.com>
" LastChange: 2010-03-16

" GENERAL SETTINGS: {{{1
" To use VIM settings, out of VI compatible mode.
set nocompatible
" Enable file type detection.
filetype plugin indent on
" Syntax highlighting.
syntax on
" Setting colorscheme
color mycolor
" Other settings.
set   autoindent
set   autoread
set   autowrite
set   backspace=indent,eol,start
set nobackup
set   cindent
set   cinoptions=:0
set   completeopt=longest,menuone
set   encoding=utf-8
set noexpandtab
set   fileencodings=utf-8,gb2312,gbk,gb18030
set   fileformat=unix
set   foldenable
set   foldmethod=marker
set   helpheight=10
set   helplang=cn
set   hidden
set   history=100
set   hlsearch
set   ignorecase
set   incsearch
set   laststatus=2
set   mouse=a
set   number
set   pumheight=10
set   ruler
set   scrolloff=5
set   shiftwidth=4
set   showcmd
set   smartindent
set   smartcase
set   tabstop=4
set   termencoding=utf-8
set   textwidth=80
set   whichwrap=h,l
set   wildignore=*.bak,*.o,*.e,*~
set   wildmenu
set   wildmode=list:longest,full
set nowrap

" AUTO COMMANDS: {{{1
autocmd FileType c,cpp set expandtab
" Restore the last quit position when open file.
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \     exe "normal g'\"" |
    \ endif

" SHORTCUT SETTINGS: {{{1

" Set mapleader
let mapleader=","
" Space to command mode.
nnoremap <space> :
vnoremap <space> :
" Switching between buffers.
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" PLUGIN SETTINGS: {{{1
" plugin shortcuts
nmap <silent> <F2> :TlistToggle<cr>
nmap <silent> <F3> :NERDTreeToggle<cr>
nmap <silent> <F4> :MRU<cr>
nmap <silent> <F9> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>
nmap <silent> <F10> :!cscope -Rb<cr><cr>:cs add cscope.out<cr>
nmap <silent> <F11> :call HLUDSync()<cr>
nmap <silent> <F12> :GetLatestVimScripts<cr>
nmap <silent> <leader>ss :cs find s <C-R>=expand("<cword>")<cr><cr>
nmap <silent> <leader>sg :cs find g <C-R>=expand("<cword>")<cr><cr>
nmap <silent> <leader>sc :cs find c <C-R>=expand("<cword>")<cr><cr>
nmap <silent> <leader>st :cs find t <C-R>=expand("<cword>")<cr><cr>
nmap <silent> <leader>se :cs find e <C-R>=expand("<cword>")<cr><cr>
nmap <silent> <leader>sf :cs find f <C-R>=expand("<cfile>")<cr><cr>
nmap <silent> <leader>si :cs find i <C-R>=expand("<cfile>")<cr><cr>
nmap <silent> <leader>sd :cs find d <C-R>=expand("<cword>")<cr><cr>
" taglist.vim
let g:Tlist_Auto_Update=1
let g:Tlist_Process_File_Always=1
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_Show_One_File=1
let g:Tlist_WinWidth=25
let g:Tlist_Enable_Fold_Column=0
let g:Tlist_Auto_Highlight_Tag=1
" NERDTree.vim
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=25
let NERDTreeShowLineNumbers=0
" cscope.vim
if has("cscope")
    set csto=1
    set cst
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif
" OmniCppComplete.vim
let g:OmniCpp_DefaultNamespaces=["std"]
let g:OmniCpp_MayCompleteScope=1
let g:OmniCpp_SelectFirstItem=2
" VimGDB.vim
if has("gdb")
	set asm=0
	let g:vimgdb_debug_file=""
	run macros/gdb_mappings.vim
endif
" LookupFile setting
let g:LookupFile_MinPatLength=2
let g:LookupFile_PreserveLastPattern=0
let g:LookupFile_PreservePatternHistory=1
let g:LookupFile_AlwaysAcceptFirst=1
let g:LookupFile_AllowNewFiles=0
" Man.vim
source $VIMRUNTIME/ftplugin/man.vim


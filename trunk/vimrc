"===============================================================================
"        File: .vimrc
" Description: VIM configuration file ~/.vimrc
"      Author: Jeffy (jeffy.du@gmail.com)
"     Created: 2009/10/23
"    Revision: 2009/10/23 | v0.1 | jeffy (jeffy.du@gmail.com)
"===============================================================================

"===============================================================================
" General Settings
"===============================================================================
"{{{
"-------------------------------------------------------------------------------
" Use Vim settings, rather then Vi settings.
" This must be first, because it changes other options as a side effect.
"-------------------------------------------------------------------------------
set nocompatible
"-------------------------------------------------------------------------------
" Enable file type detection. Use the default filetype settings.
" Also load indent files, to automatically do language-dependent indenting.
"-------------------------------------------------------------------------------
filetype plugin on
filetype indent on
"-------------------------------------------------------------------------------
" Switch syntax highlighting on.
"-------------------------------------------------------------------------------
syntax on            
"-------------------------------------------------------------------------------
" Platform specific items:
" - central backup directory (has to be created)
" - default dictionary
" - autoload vim configuration file
"-------------------------------------------------------------------------------
if  has("win32")
    runtime mswin.vim
    set backupdir =$VIM\vimfiles\vim.backupdir,.
    set dictionary=$VIM\vimfiles\wordlists/german.list
    autocmd! bufwritepost _vimrc source $VIM\_vimrc
    if has("gui_running")
        au GUIEnter * simalt ~x " maxmal window on open
    endif
else
    set backupdir =$HOME/.vim.backupdir,.
    set dictionary=$HOME/.vim/wordlists/german.list
    autocmd! bufwritepost .vimrc source $HOME/.vimrc
endif
"-------------------------------------------------------------------------------
" Various settings
"-------------------------------------------------------------------------------
set autoindent                  " copy indent from current line
set autoread                    " read open files again when changed outside Vim
set autowrite                   " write a modified buffer on each :next , ...
set backspace=indent,eol,start  " backspacing over everything in insert mode
set backup                      " keep a backup file
set backupext=.bak              " append .bak to backup files
set browsedir=current           " which directory to use for the file browser
set cindent                     " indent for C/C++ type
set cinoptions=:0               " options for C indent
set complete+=k                 " scan the files given with the 'dictionary' option
set completeopt=longest,menuone " completion options
set foldenable                  " auto fold code
set foldmethod=marker           " fold by manual marker
set guioptions-=T               " remove toolbar of gvim
set hidden                      " hidden buffer when abandened
set history=50                  " keep 50 lines of command line history
set hlsearch                    " highlight the last used search pattern
set ignorecase                  " case sensitive when us present
set incsearch                   " do incremental searching
set laststatus=2                " always show statusline
set listchars=tab:>.,eol:\$     " strings to use in 'list' mode
set mouse=a                     " enable the use of the mouse
set nowrap                      " do not wrap lines
set number                      " show number line
set popt=left:8pc,right:3pc     " print options
set pumheight=10                " max popmenu window height
set ruler                       " show the cursor position all the time
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set scrolloff=5                 " lines to scroll off
set shiftwidth=4                " number of spaces to use for each step of indent
set showcmd                     " display incomplete commands
set smartindent                 " smart autoindenting when starting a new line
set smartcase                   " smart case matched
set statusline=%<\"%f\"\ [%{strlen(&ft)?&ft:'none'},%{&encoding},%{&fileformat}]\ %m%r%w\ %=%-14.(%l,%c%V%)\ %P
set tabstop=4                   " number of spaces that a <Tab> counts for
if !has("gui_running")
    set vb t_vb=                " no error bell
endif
set wildignore=*.bak,*.o,*.e,*~ " wildmenu: ignore these extensions
set wildmenu                    " command-line completion in an enhanced mode
set wildmode=list:longest,full  " wild menu mode
" Insert blanks instead of tab
autocmd FileType c,cpp,vim,sh set expandtab
"}}}
"===============================================================================
" Shortcut Mappings
"===============================================================================
"{{{
"-------------------------------------------------------------------------------
" Grobal map leader setting
"-------------------------------------------------------------------------------
let g:mapleader=","
let mapleader=","
"-------------------------------------------------------------------------------
" Fast save and quit
"-------------------------------------------------------------------------------
nmap <leader>ww :w!<CR>
nmap <leader>wa :wa!<CR>
nmap <leader>qq :q!<CR>
nmap <leader>qa :qa!<CR>
nmap <leader>xx :x!<CR>
nmap <leader>xa :xa!<CR>
"-------------------------------------------------------------------------------
" Fast switching between buffers
"-------------------------------------------------------------------------------
nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l
"-------------------------------------------------------------------------------
" autocomplete parenthesis, brackets and braces
"-------------------------------------------------------------------------------
"inoremap ( ()<Left>
"vnoremap ( s()<Esc>P<Right>%
"inoremap [ []<Left>
"vnoremap [ s[]<Esc>P<Right>%
"inoremap { {}<Left>
"vnoremap { s{}<Esc>P<Right>%
"-------------------------------------------------------------------------------
" autocomplete quotes (visual and select mode)
"-------------------------------------------------------------------------------
"xnoremap  '  s''<Esc>P<Right>
"xnoremap  "  s""<Esc>P<Right>
"xnoremap  `  s``<Esc>P<Right>
"-------------------------------------------------------------------------------
" Tab selection and creation
"-------------------------------------------------------------------------------
nmap <S-H> gT
nmap <S-L> gt
nmap <S-T> :tabnew %<CR>
"-------------------------------------------------------------------------------
" Set fileformat
"-------------------------------------------------------------------------------
nmap <leader>fu :set ff=unix<CR>
nmap <leader>fd :set ff=dos<CR>
"-------------------------------------------------------------------------------
" compiler and debug c/c++ using makefile
"-------------------------------------------------------------------------------
autocmd FileType c,cpp map <buffer> <leader><space> :w<CR>:make<CR>
autocmd FileType c,cpp map <buffer> <leader>mp :set makeprg=
nmap <leader>rp :! 
nmap <leader>dn :cn<CR>
nmap <leader>dp :cp<CR>
nmap <leader>dw :cw 10<CR>
"-------------------------------------------------------------------------------
" fast to search word undercorsor
"-------------------------------------------------------------------------------
nmap <leader>lv :lv /<C-R>=expand("<cword>")<CR>/ %<CR>:lw<CR>
"-------------------------------------------------------------------------------
" fast to open help window
"-------------------------------------------------------------------------------
nmap <leader>hw :help <C-R>=expand("<cword>")<CR><CR>
"-------------------------------------------------------------------------------
" fast to edit and source vimrc
"-------------------------------------------------------------------------------
nmap <leader>vs :source ~/.vimrc<CR>
nmap <leader>ve :e ~/.vimrc<CR>
"}}}
"===============================================================================
" Plugin Configurations
"===============================================================================
"{{{
"-------------------------------------------------------------------------------
" WinManager.vim - manager windows to look like a IDE
"-------------------------------------------------------------------------------
nmap <leader>wm :WMToggle<CR>
nmap <leader>wf :FirstExplorerWindow<CR>
nmap <leader>wb :BottomExplorerWindow<CR>
let g:winManagerWindowLayout="BufExplorer|TagList"
let g:winManagerWidth=25
let g:defaultExplorer=0
"-------------------------------------------------------------------------------
" taglist.vim - show tag list
"-------------------------------------------------------------------------------
nmap <leader>tl :Tlist<CR>
let g:Tlist_Auto_Update=1
let g:Tlist_Process_File_Always=1
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_Show_One_File=1
let g:Tlist_WinWidth=25
let g:Tlist_Enable_Fold_Column=0
if has("win32")
    let g:Tlist_Ctags_Cmd="$VIM\ctags.exe"
endif
"-------------------------------------------------------------------------------
" cscope setting
"-------------------------------------------------------------------------------
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif
nmap <leader>ss :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>st :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>se :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>si :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>sd :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <silent><F3>  :!cscope -Rbq<CR><CR>:cs add cscope.out<CR>
"-------------------------------------------------------------------------------
" NERD_tree.vim - file tree explorer
"-------------------------------------------------------------------------------
nmap <leader>fe :NERDTree<CR>
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=25
let g:NERDTreeQuitOnOpen=1
"-------------------------------------------------------------------------------
" omnicppcomplete.vim - aotu complete the c/c++ members
"-------------------------------------------------------------------------------
nmap <silent><F2> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
let g:OmniCpp_DefaultNamespaces=["std"]
let g:OmniCpp_MayCompleteScope=1
let g:OmniCpp_SelectFirstItem=2
"-------------------------------------------------------------------------------
" acp.vim - auto complete popup
"-------------------------------------------------------------------------------
let g:acp_mappingDriven=1
"-------------------------------------------------------------------------------
" mru.vim - show the file open history
"-------------------------------------------------------------------------------
nmap <leader>hs :MRU<CR>
"-------------------------------------------------------------------------------
" ZoomVim.vim - buffer full screen switch
"-------------------------------------------------------------------------------
nmap <leader>zz <C-W>o
"-------------------------------------------------------------------------------
" GetLatestVimScripts.vim - get latest version vim scripts
"-------------------------------------------------------------------------------
nmap <leader>gs :GetLatestVimScripts<CR>
"-------------------------------------------------------------------------------
" mark.vim - mutiple color to words
"-------------------------------------------------------------------------------
nmap <leader>ms <Plug>MarkSet
vmap <leader>ms <Plug>MarkSet
nmap <leader>mc <Plug>MarkClear
vmap <leader>mc <Plug>MarkClear
nmap <leader>mr <Plug>MarkRegex
vmap <leader>mr <Plug>MarkRegex
"-------------------------------------------------------------------------------
" snipMate.vim - make your vim work as textMate
"-------------------------------------------------------------------------------
let g:snips_author="Jeffy Du"
let g:snips_email="jeffy.du@gmail.com"
let g:snips_compary="SicMicro"
"}}}

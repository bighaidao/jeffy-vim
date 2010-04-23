1.  Install ctags and cscope.
    For ubuntu:
        $ sudo apt-get install ctags cscope
    For Mswin:
        copy ctags.exe cscope.exe sort.exe to vim install directory,
        c:\Program Files\Vim\Vim72

2.  Install vim files.
    First, change directory to jeffy-vim, then
    For Linux:
        $ ./install.sh
    For Mswin:
        a. backup old vim files.
        b. copy vimrc to c:\Program Files\Vim\_vimrc
           copy vim to c:\Program Files\Vim\vimfiles
        c. open getscript.vba with gvim and run ":so %", then run ":q" to quit.
        d. open gvim and run ":GetScripts", then run ":q" to quit.
        e. copy myfiles.

3.  All of the directory must be change to your own directory.


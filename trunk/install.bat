@echo off
echo This install will NOT backup your old vim files.
choice /M "Did you backup your old vim files."
if errorlevel 2 goto end
if errorlevel 1 goto install

:install
set VimDir=C:\Program Files\Vim

rd /s/q "%VimDir%\vimfiles"
del "%VimDir%\_vimrc"

xcopy vimfiles "%VimDir%\vimfiles" /s/e/i/y
copy vimrc "%VimDir%\_vimrc"
copy /y exefiles "%systemroot%\system32\"

echo Install finished, enjoy yourself!
goto pause

:end
echo Install cancel!
goto pause

:pause
@pause

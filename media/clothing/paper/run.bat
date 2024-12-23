@echo off
setlocal enabledelayedexpansion

rem Define the base folder to start the recursive search
set "basefolder=."

rem Loop through all matching files recursively
for /r "%basefolder%" %%f in (*_swf.png) do (
    rem Get the full path of the current file
    set "oldname=%%f"

    rem Extract the directory and the file name separately
    set "dir=%%~dpf"
    set "file=%%~nxf"

    rem Construct the new name by removing _swf from the filename
    set "newfile=!file:_swf=!"

    rem Rename the file (only the name portion, with directory preserved)
    ren "!dir!!file!" "!newfile!"
)

echo All matching files have been renamed.
pause

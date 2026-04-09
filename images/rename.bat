@echo off
setlocal enabledelayedexpansion

for %%f in (*.jpg *.jpeg *.png *.webp) do (
    set "name=%%~nf"
    set "ext=%%~xf"

    set "newname=!name: =_!"
    set "newname=!newname:.=_!"
    set "newname=!newname:'=!"
    set "newname=!newname:%%=!"

    if not "%%~nf%%~xf"=="!newname!!ext!" (
        ren "%%f" "!newname!!ext!"
    )
)

echo Done!
pause
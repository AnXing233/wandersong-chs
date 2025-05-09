@echo off

rem V‚rifier que le r‚pertoire est au bon endroit
set "full_path=%cd%"
set "sub_path=steamapps\common\Wandersong\PC\PatchFR"

echo %full_path% | findstr /I /C:"%sub_path%" >nul

if %ERRORLEVEL%==0 (

if exist old\ (
move "old\*.*" ".."
move "old\lang\*.*" "..\lang"
rmdir /S /Q old
echo Le jeu a correctement ‚t‚ d‚patch‚
) else (
echo Le r‚pertoire "old" n'a pas ‚t‚ trouv‚
echo Le patch n'a pas encore ‚t‚ appliqu‚ ou le r‚pertoire a ‚t‚ supprim‚
echo Dans un tel cas, veuillez passez par Steam, voir documentation
)

) else (
echo Le fichier ne se trouve pas dans le bon r‚pertoire
echo Le r‚pertoire "PatchFR" doit ˆtre plac‚ dans ".\steamapps\common\Wandersong"
)
@pause

@echo off

rem V�rifier que le r�pertoire est au bon endroit
set "full_path=%cd%"
set "sub_path=steamapps\common\Wandersong\PC\PatchCHS"

echo %full_path% | findstr /I /C:"%sub_path%" >nul

if %ERRORLEVEL%==0 (

if exist old\ (
move "old\*.*" ".."
move "old\lang\*.*" "..\lang"
rmdir /S /Q old
)

rem 创建一个old目录以保存备份
mkdir old
attrib +h old /s /d


rem 主程序 - 应用data.win补丁
.\tools\xdelta-3.1.0-x86_64.exe -v -d -s "..\data.win" ".\CHS\data.win.chs" "..\data.win.patch"
move "..\data.win" old
ren "..\data.win.patch" "data.win"
@REM .\tools\xdelta-3.1.0-x86_64.exe -v -d -s "..\wandersong.exe" ".\FR\wandersong.exe.fr" "..\wandersong.exe.patch"
@REM move "..\wandersong.exe" old
@REM ren "..\wandersong.exe.patch" "wandersong.exe"

rem 移动语言文件
mkdir old\lang
move "..\lang\English.tsv" old\lang
copy .\CHS\English.tsv ..\lang
@REM move "..\ws_credits" old
@REM copy .\FR\ws_credits ..

echo O | 补丁安装成功！
) else (
echo X | 补丁文件夹不在正确的目录中！
echo ! | 请确认您已将“PatchCHS”文件夹放置在“\steamapps\common\wandersong”中！
)
@pause

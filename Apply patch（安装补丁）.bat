@echo off

rem 检查目录是否位于正确的位置
set "full_path=%cd%"

echo %full_path% | findstr /I /C:"%full_path%" >nul

if %ERRORLEVEL%==0 (

if exist old\ (
move "old\*.*" ".."
move "old\lang\*.*" "..\lang"
rmdir /S /Q old
)

rem 创建一个old目录以保存备份
mkdir old
attrib old /s /d


rem 主程序 - 应用data.win补丁
".\tools\xdelta-3.1.0-x86_64.exe" -v -d -s "..\data.win" ".\CHS\data.win.chs" "..\data.win.patch"
move "..\data.win" old
ren "..\data.win.patch" "data.win"

rem 移动语言文件
mkdir old\lang
move "..\lang\English.tsv" old\lang
copy .\CHS\English.tsv ..\lang

echo "🟢【成功】补丁安装成功 | Patch applied successfully! :D"
) else (  
echo "🔴【错误】补丁文件夹不在正确的目录中！ | Patch folder is not in the correct directory!"
echo "🟡【注意】请确保您已将该脚本所在的父目录放置在“\steamapps\common\wandersong\PC”中！ | Please make sure that the parent directory of this script is placed in `\steamapps\common\wandersong\PC`!"
)
@pause

@echo off

rem 检查目录是否位于正确的位置
set "full_path=%cd%"
set "sub_path=steamapps\common\Wandersong\PC\PatchCHS"

echo %full_path% | findstr /I /C:"%sub_path%" >nul

if %ERRORLEVEL%==0 (

if exist old\ (
move "old\*.*" ".."
move "old\lang\*.*" "..\lang"
rmdir /S /Q old
echo 【成功】游戏已还原为英文
) else (
echo 【错误】“old”文件夹未找到
echo 【可能原因】Apply patch.bat未生成old目录 或 old目录已被删除
echo 【注意】请使用Steam验证游戏文件的完整性，并还原文件
)

) else (
echo 【错误】文件不在正确的目录中
echo 【注意】请确保已将“PatchCHS”文件夹放置在“\steamapps\common\wandersong\PC”中
)
@pause

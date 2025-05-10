# 定义目录路径
script_path=$(realpath "$0")
old_dir="./old"
lang_dir="$old_dir/lang"

echo "当前脚本的路径是: $script_path"

# 检测 old 文件夹是否存在，如果不存在则创建
if [ ! -d "$old_dir" ]; then
    echo "old 文件夹不存在，正在创建..."
    mkdir "$old_dir"
    echo "old 文件夹已创建。"
fi

# 检测 old/lang 文件夹是否存在，如果不存在则创建
if [ ! -d "$lang_dir" ]; then
    echo "old/lang 文件夹不存在，正在创建..."
    mkdir "$lang_dir"
    echo "old/lang 文件夹已创建。"
fi

# 定义工具路径和参数
tool_path="./tools/xdelta3"
data_win="../data.win"
data_win_chs="./CHS/data.win.chs"
patch_file="../data.win.patch"
chs_dir="./CHS"
lang_target_dir="../lang"

# 检测工具是否存在
if [ ! -f "$tool_path" ]; then
    echo "错误：$tool_path 文件不存在，请检查路径是否正确。"
    exit 1
fi

# 检测输入文件是否存在
if [ ! -f "$data_win" ]; then
    echo "错误：$data_win 文件不存在，请检查路径是否正确。"
    exit 1
fi

if [ ! -f "$data_win_chs" ]; then
    echo "错误：$data_win_chs 文件不存在，请检查路径是否正确。"
    exit 1
fi

# 给补丁程序添加可执行权限
chmod +x ./tools/xdelta3

# 运行 xdelta3 程序
echo "正在运行 xdelta3 程序..."
"$tool_path" -v -d -f -S none -s "$data_win" "$data_win_chs" "$patch_file"

# 移动 ../data.win 到 ./old 文件夹
if [ -f "../data.win" ]; then
    mv "../data.win" "$old_dir"
    echo "已将 ../data.win 移动到 $old_dir"
else
    echo "错误：../data.win 文件不存在。"
    exit 1
fi

# 将 ../data.win.patch 重命名为 ../data.win
if [ -f "../data.win.patch" ]; then
    mv "../data.win.patch" "../data.win"
    echo "已将 ../data.win.patch 重命名为 ../data.win"
else
    echo "错误：../data.win.patch 文件不存在。"
    exit 1
fi

# 移动 ../lang/English.tsv 到 ./old/lang 文件夹
if [ -f "../lang/English.tsv" ]; then
    mv "../lang/English.tsv" "$lang_dir"
    echo "已将 ../lang/English.tsv 移动到 $lang_dir"
else
    echo "错误：../lang/English.tsv 文件不存在。"
    exit 1
fi

# 将 ./CHS/English.tsv 复制到 ../lang 文件夹
if [ -f "$chs_dir/English.tsv" ]; then
    cp "$chs_dir/English.tsv" "$lang_target_dir"
    echo "已将 $chs_dir/English.tsv 复制到 $lang_target_dir"
else
    echo "错误：$chs_dir/English.tsv 文件不存在。"
    exit 1
fi

# 输出成功信息（黑色背景，绿色前景）
echo -e "\e[40m\e[32m操作成功完成！\e[0m"
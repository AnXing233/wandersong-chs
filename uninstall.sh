# 定义目录路径
old_dir="./old"
parent_dir="../"

# 检查 ./old 目录是否存在
if [ ! -d "$old_dir" ]; then
    echo "错误：$old_dir 文件夹不存在。"
    exit 1
fi

# 移动 ./old 目录下的所有文件到 ../
echo "正在将 $old_dir 目录下的所有文件移动到 $parent_dir..."
for file in "$old_dir"/*; do
    if [ -f "$file" ]; then
        mv "$file" "$parent_dir"
        echo "已移动文件：$file"
    elif [ -d "$file" ]; then
        # 如果是目录，先复制再删除原目录
        cp -r "$file" "$parent_dir"
        echo "已复制目录：$file"
        rm -rf "$file"
        echo "已删除原目录：$file"
    fi
done

# 删除 ./old 文件夹
echo "正在删除 $old_dir 文件夹..."
rm -rf "$old_dir"
echo "已删除 $old_dir 文件夹及其子文件和目录。"

# 输出成功信息
echo -e "\e[40m\e[32m还原补丁操作成功完成！\e[0m"

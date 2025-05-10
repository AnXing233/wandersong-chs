# Wandersong非官方简体中文翻译补丁

## 概述
此项目为Wandersong的[Steam版本](https://store.steampowered.com/app/530320/Wandersong/)的简体中文翻译补丁脚本仓库，目前仅适用于Windows、Linux（需要在库中的属性菜单打开“兼容性”下的 **“强制使用Steam Play兼容性工具”**，proton即可）平台，Mac OS平台目前没有计划（指没有设备，不确定是否有需求）。


## 使用方法
1. 在Release包发布页**下载补丁文件**
2. 将文件解压后，你会得到一个**名为“PatchCHS”的文件夹，将该文件夹复制到Wandersong的游戏目录下**（".\steamapps\common\Wandersong\PC"）
  - 如何找到游戏目录：
    - 打开你的Steam库，找到Wandersong，
    - 点击窗口右边的小齿轮，选择“管理”，点击“浏览本地文件”，弹出的资源管理器窗口就是游戏目录了
3. 打开刚刚复制的PatchCHS文件夹
  - Windows端：找到并**双击文件`“Apply patch（安装补丁）.bat”`**
  - Linux端：打开右键菜单，选择 **“在终端中打开(Open in Terminal)”**，在终端窗口输入`sudo sh ./install.sh`并回车
4. 运行完成后即可游玩
   *备份文件将存放在PatchCHS/old文件夹。如果你想还原英文，找到并运行Restore game（还原英文）.bat 即可*


## 疑问解答
### 1. “【错误】补丁文件夹不在正确的目录中！”
请确保已将“PatchCHS”文件夹放置在“\steamapps\common\wandersong\PC”中，**不要重命名其他内容**

### 2. 补丁脚本提供的路径不一样
可能是把脚本文件放在Wandersong的目录下，而不是“\steamapps\common\wandersong\PC”这种Steam默认目录下

你可以尝试修改 `“Apply patch（安装补丁）.bat”` 中的第5行，将sub_path的值改为“PatchCHS”
* 修改前： `set "sub_path=steamapps\common\Wandersong\PC\PatchCHS"`
* 修改后： `set "sub_path=PatchCHS"`

### 3. 我游戏打不开 
该补丁仅适用于Steam版本。*itch.io和GoG版本暂时没有进行适配*

你可以在`"old"`文件夹找到并还原你的文件


## 如何还原英文/把游戏换回英文
有两种方法：
### 1.手动还原
- 备份文件已经保存在 `PatchCHS\old` 文件夹中，你可以找到该文件夹，并把里面的内容复制/移动到游戏的根目录，**替换同名文件**即可
- 或者运行 `PatchCHS\Restore game（还原英文）.bat`(Linux端是打开在PatchCHS文件夹下打开终端，输入`sudo sh ./uninstall.sh`并回车) 来完成上述动作

### 2.通过Steam重新下载内容
- 打开你的Steam库，找到Wandersong
- 点击窗口右边的**小齿轮⚙**，选择 **“属性”**
- 在左列选项卡中找到并单击 **“已安装文件”**
- 在右列选项中找到 **“验证游戏文件的完整性”**，等待下载完成


## 相关链接
- 相关游戏：[Wandersong](https://wanderso.ng/)
- 游戏批处理脚本基于项目[xdelta3](https://github.com/Moodkiller/xdelta3-gui-2.0)制作补丁。Linux端的补丁应用程序为[xdelta3-gui-2.0.7
版本下的附属发行包](https://github.com/Moodkiller/xdelta3-gui-2.0/releases/tag/v2.0.7)

## 制作人员名单
- *（待补充）*

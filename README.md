# Wandersong简体中文翻译补丁
宣传视频：[【汉化】流浪之歌/Wandersong汉化补丁发布（Bilibili）](https://www.bilibili.com/video/BV1aotZzqEe9)
![alt text](image/small.png)
## 概述
此项目为Wandersong的[Steam版本](https://store.steampowered.com/app/530320/Wandersong/)的简体中文翻译补丁脚本仓库，目前仅适用于Windows、Linux（实验性，需要在库中的属性菜单打开“兼容性”下的 *“强制使用Steam Play兼容性工具”*，proton即可）平台，Mac OS平台目前没有计划（指没有设备，不确定是否有需求）。
该补丁协议为[CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)

## 补丁目录结构
```bash
wandersong-chs/
│   Apply patch（安装补丁）.bat
│   install.sh
│   LICENSE
│   README.md
│   Restore game（还原英文）.bat
│   uninstall.sh
│
├───CHS
│       English.tsv
│       exe-wandersong-patch.xdelta
│       wandersong-patch_v[该文件构建时的版本号]-[该文件的构建日期].xdelta
│       ws_credits
│
├───image
│       small.png
│
└───tools
        xdelta-3.1.0-x86_64.exe
        xdelta3
        xdelta3_mac
```
## 使用方法
1. 在[Github Release包发布页](https://github.com/AnXing233/wandersong-chs/releases)或[Gitee Release包发布页](https://gitee.com/anxing233/wandersong-chs/releases)**下载补丁文件**
2. 将文件解压后，你会得到一个文件夹，**将该文件夹复制到Wandersong的游戏目录下**（参考目录`"C:\Program Files (x86)\Steam\steamapps\common\Wandersong\PC\"`）
    - 如何找到游戏目录：
      - 打开你的Steam库，找到Wandersong，
      - 点击窗口右边的小齿轮，选择“管理”，点击“浏览本地文件”，弹出的资源管理器窗口就是游戏目录了
3. 打开刚刚复制的文件夹里面（理想情况下是`游戏根目录\wandersong-chs\`）
  - Windows端：找到并**双击文件`“Apply patch（安装补丁）.bat”`**
  - Linux端：打开右键菜单，选择 **“在终端中打开(Open in Terminal)”**，在终端窗口输入`sudo sh ./install.sh`并回车
4. 运行完成后即可游玩
   *备份文件将存放在该脚本根目录下的`"old"`文件夹。如果你想还原英文，找到并运行`Restore game（还原英文）.bat`（Linux端是`uninstall.sh`）即可*


## 疑问解答
### 1. “【错误】补丁文件夹不在正确的目录中！”
请确保已将解压的文件夹放置在游戏根目录下`Steam游戏库文件夹\wandersong\PC\`中，**不要重命名其他内容**


### 2. 我游戏打不开 
该补丁仅适用于Steam版本。

你可以在`"old"`文件夹找到并还原你的文件


## 如何还原英文/把游戏换回英文
有两种方法：
### 1.手动还原
- 备份文件已经保存在该脚本根目录下的 `old` 文件夹中，你可以找到该文件夹，并把里面的内容复制/移动到游戏的根目录，**替换同名文件**即可
- 或者运行 `Restore game（还原英文）.bat`(Linux端：在该文件夹下打开终端，输入`sudo sh ./uninstall.sh`并回车) 来完成上述操作

### 2.通过Steam的验证游戏文件完整性选项以重新下载内容
- 打开你的Steam库，找到Wandersong
- 点击窗口右边的**小齿轮⚙**，选择 **“属性”**
- 在左列选项卡中找到并单击 **“已安装文件”**
- 在右列选项中找到并点击 **“验证游戏文件的完整性”**，等待下载完成


## 相关链接
- 相关游戏：[Wandersong](https://wanderso.ng/)
- 该项目部分程序参考自[wandersong-fr](https://github.com/TheFloFic/wandersong-fr)（真的非常感谢！！）
- 游戏批处理脚本基于[xdelta3](https://github.com/Moodkiller/xdelta3-gui-2.0)制作补丁。Linux端的补丁应用程序为[xdelta3-gui-2.0.7版本下的附属平台包](https://github.com/Moodkiller/xdelta3-gui-2.0/releases/tag/v2.0.7)
- 程序使用软件
  - [UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool)（对`data.win`进行字体修改）
  - [Bmfont](https://angelcode.com/products/bmfont/)（游戏中文字体制作，使用UndertaleModTool的Fonteditor.csx进行中英文字体混合）
- 游戏使用字体
  - UI字体：[Underdog](https://zh.fonts2u.com/underdog)（英文，个人非商用）+ [悠哉字体 Medium](https://github.com/lxgw/yozai-font)（中文，OFL-1.1）
  - 地图字体：[Trade Winds](https://fonts.google.com/specimen/Trade+Winds)（英文，OFL）+ [山海般若体](https://shanhaifonts.com/h-col-155.html)（中文，斜体处理，个人非商用）
  - 一般人物对话字体：[Underdog](https://zh.fonts2u.com/underdog)（英文，游戏中有字形更改，个人非商用）+ [标小智龙珠体](https://github.com/maoken-fonts/LongZhuTi)（中文，OFL-1.1）
  - 特殊人物字体：
    - [Ritaglio](https://www.archistico.com/product/font-ritaglio/)（英文，OFL）+ [小赖字体](https://github.com/lxgw/kose-font)（中文，OFL-1.1）
    - [Ander Hedge](https://www.dafont.com/ander-hedge.font)（英文，个人非商用）+ [汉仪铸字碎冰冰 U](https://www.hanyi.com.cn/productdetail?id=85111&type=0)（中文，个人非商用）
    - [Hanna Handwriting](https://www.dafont.com/hannahandwriting.font)（英文，个人非商用）+ [可爱吧唧](https://www.wonderfonts.com.cn/font/140.html)（中文，个人非商用）
    - [MS PMincho](https://www.fonts.net.cn/font-35207154318.html)（英文，Microsoft Windows系统日语默认字体，个人非商用）+ [文鼎PL简报宋](https://font.doany.cn/f/ar-pl-sungtil-gb)（中文，免费可商用）

## 制作人员名单
- 【策划】
  - [西部苦力怕](https://space.bilibili.com/24886354)
- 【翻译】
  - [XH](https://space.bilibili.com/249624222)
  - [Rico.Se7en](https://space.bilibili.com/3776931)
  - [西部苦力怕](https://space.bilibili.com/24886354)
  - [平流层](https://space.bilibili.com/174533181)
- 【程序】
  - [AnXing233](https://space.bilibili.com/443074427)
  - [西部苦力怕](https://space.bilibili.com/24886354)
- 【美工】
  - [AnXing233](https://space.bilibili.com/443074427)
  - [XH](https://space.bilibili.com/249624222)
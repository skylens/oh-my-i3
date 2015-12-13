# oh-my-i3

带给你一个不一样的i3wm！

![0](https://github.com/JH623/screenshot/blob/master/oh-my-i3/0.png)

## 依赖

- 调用conky作为i3bar输出
- feh显示壁纸
- xcompmgr透明插件（可选）
- freetype-infinality字体渲染美化（可选）

## 字体

- Monaco:一个很好看的等宽英文字体，非常适用于写代码，若显示不佳请用freetype-infinality渲染
- font-awesome:开源的图标字体，可通过简单地复制粘贴使用，具体查看：http://fortawesome.github.io/Font-Awesome/cheatsheet/

## 安装

先行安装好i3（一个不到1M的WM:)
```bash
# 克隆oh-my-i3到本地
git clone https://github.com/ID1258/oh-my-i3.git
# cd 到oh-my-i3目录
cd oh-my-i3
# 安装
sh install.sh
```
若已运行i3需要`$mod+Shift+R`重载入配置

## 快捷键

- $mod键默认为windows键
- $mod+Enter打开终端
- $mod+1~10切换工作区
- $mod+w/s/a/d 上下左右切换窗口
- 更多请查看~/.config/i3/config，并根据自己的习惯进行更改

## 建议的开机启动项（写入到~/bin/RC，并在config中取消注释）

```bash
#!/bin/sh

# 关闭嘟嘟的警告声
xset -b off
# 一段时间无操作自动关闭屏幕
xset dpms 900

# 笔记本触摸板设置
# TapButton定义鼠标左/中/右键分别为单指/双指/三指操作
# ScrollDelta为滚屏速度，值越接近0速度越快，负数为自然划屏，类似手机划屏
#synclient -l TapButton1=1
#synclient -l TapButton2=2
#synclient -l TapButton3=3
#synclient -l VertScrollDelta=-107
#synclient -l HorizScrollDelta=-107

```

![1](https://github.com/JH623/screenshot/blob/master/oh-my-i3/1.png)

## 更多的特性：

- dmenu样式：与ibar统一样式，字体支持，等宽覆盖。请先更新至4.6版本。
- 图标字体：更直观更美观。
- 智能启动：添加智能启动脚本st（虽然很笨），简化启动，避免重复运行。

![2](https://github.com/JH623/screenshot/blob/master/oh-my-i3/2.png)

- 更多:靠你们来拯救世界了！

                                                  Allen Qiu

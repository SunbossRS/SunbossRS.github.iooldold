---
layout: post
title: 在WSL中安装图形界面
date: 2019-07-28 19:38:27 +0800
tags: 
img: 
---
哈喽哈喽，我这条*咸鱼*又肥来了。  
今天呢，我们来教大家如何在WSL里安装图形界面。  
*呃，最近呢，我开发了一个作品，希望大家对多支持，然后今天这个教程也会包含这个作品的部分内容哦 -*

### 需要の东西
- 一台Windows10电脑
  - 拥有WSL
  - WSL要带有wget功能
- vnc连接软件
  - 最好是realvnc的

### 01. 下载图形界面安装脚本
在命令行里输入
```bash
wget https://github.com/sunbossrs/linuxguisetup/raw/wsl.ver/发行系统-桌面环境.sh
```
你们可以看到我这里引用了[SunbossRS/LinuxGuisetup](https://github.com/sunbossrs/linuxguisetup)，希望大家多多支持！在这个命令中，可以把*发行系统*改成你正在用的发行系统。而*桌面环境*可以换成你想要的桌面环境。  
下载好脚本后，就可以运行命令:
```bash
sudo sh 发行系统-桌面环境.sh
```

### 02. 修改tightvncservser
在这个脚本中自带安装了`tightvncserver`和`vnc4server`，可以利用vnc进行浏览桌面。  
运行命令:
```bash
tightvncserver -kill :1
tightvncserver :2300
```
端口可以任意配置，这里我配置了2300端口。  

### 03. 打开vnc浏览软件并浏览
打开vnc浏览软件，然后输入浏览ip地址`localhost:2300`或者`127.0.0.1:2300`，就能看见成果啦！  ;-)

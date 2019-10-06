---
title: '在树莓派3里运行我的世界1.12.1'
layout: post
img: 'http://shumeipai.nxez.com/wp-content/uploads/2017/09/20170910155453155-0.jpg'
tags: 树莓派 minecraft
---

在树莓派3运行完整Mimecraft。  
  
---

已经经过允许转载了，原作者是[GloomyGhost](http://gloomyghost.com)  
  
[Copyright的图片在这。。。](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunMinecraftOnRaspberryPi3/01.png)  
  
开始吧！  
  

### 1.更新系统

我们打开 终端 然后输入
```bash
sudo apt-get update && sudo apt-get upgrade

```
### 2. 隐藏开机界面（用于少占用内存）
```bash
sudo nano /boot/config.txt
```
这时候会出现一大堆文本。  
将光标移到最后一个字符，然后我们换行两次，输入以下内容:
```bash
disable_overscan=1
```
输入完毕后，我们按下**`ctrl`+`o`** 来保存文本。
这时候底部会出现
```bash
save as : /boot/config.txt
```
于是按下 `enter` 键来确认。  
然后输入 `ctrl`+`X` 来退出。

### 3.raspi-config的配置
输入
```bash
sudo raspi-config
```
按照下图来操作：
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunMinecraftOnRaspberryPi3/02.jpg)  
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunMinecraftOnRaspberryPi3/03.jpg)  
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunMinecraftOnRaspberryPi3/04.jpg)  
把GPU内存调到64(最后一幅图)  
`enter` 后会再次出现第一幅图的场景。这时候再次移到`Advanced Options`>`GL Driver`然后选定 `Full KMS`按下ok。  
这时，我们已经完成了配置了。  
按`tab`或者 `→`移到下面的`Finish`选项按`enter`。  
这时候会出现`Would you like to reboot now?`的字样。移到 `<Yes>` 并按下 `enter` 。

### 4.下载必要的组件
进入`lxterminal`输入
```bash
sudo apt-get -y install libalut0 libalut-dev && sudo apt-get -y install mesa-utils 
```
下载完成后输入`glxgears`
看着终端如果终端显示是60多帧每秒的话就成功了，你喜欢的话顺便可以看一看那三个齿轮的画质怎么样.他们的颜色是*红/蓝/绿*。  

### 5.下载minecraft的相关文件
从仓库里下载minecraft.jar
```bash
mkdir ~/Minecraft && mkdir ~/Minecraft/Natives && cd ~/Minecraft
wget https://gitee.com/srsyrzz/mcfullversion-rpi/raw/master/jar/Minecraft.jar
java -jar Minecraft.jar
```
然后就会打开minecraft.jar的文件了。我们输入自己的账号和密码，没有的注册一个，进入[我的世界官网](http://minecraft.net)。  
点击右下角的`edit profile`选择一个版本后`save profile`，按下play。  
**这时候你的启动器会因为缺少依赖库崩溃。**我们要下载依赖库。
```bash
wget https://gitee.com/srsyrzz/mcfullversion-rpi/raw/master/dist/liblwjgl.so && wget https://gitee.com/srsyrzz/mcfullversion-rpi/raw/master/dist/libopenal.so
```
下载完后要更新之前mc启动器的lwjgl
```bash
cd  ~/.mibecraft/libraries/org/lwjgl/lwjgl/lwjgl/2.9.4-nightly-20150209.jar && rm lwjgl-2.9.4-nightly-20150209.jar
wget https://gitee.com/srsyrzz/mcfullversion-rpi/raw/master/jar/lwjgl-2.9.4-nightly-20150209.jar
```
这里我们就设置完了。

### 6.安装OptiFine
有的人想要玩mc却不知所措。我们要用 [OptiFine](http://optifine.net/downloads) 。我们这里**必须要选1.12.1_HD_U_C5**  。  
为什么？因为后面，run.sh里面的内容要是那个1.12.1的。  
然后在终端输入
```bash
cd ~/Downloads/ && java -jar *.jar
```
再次运行mcl
```bash
cd ~/Minecraft && java -jar Minecraft.jar
```
点击 `edit profile` 然后选择 `OptiFine Profile` 再点击 `play` 还会崩溃。  
那是因为我们缺少运行脚本。输入
```bash
cd ~/Minecraft && wget https://gitee.com/srsyrzz/mcfullversion-rpi/raw/master/run1.12.1.sh && chmod +x run1.12.1.sh
```

### 6.配置run.sh
在 `~/Minecraft/run.sh` 里面，修改内容如下:
```bash
MINECRAFT_LOGIN=你的账号
MINECRAFT_USERNAME=你的玩家名称
MINECRAFT_PASSWORD=你的账号密码
```

### 7.准备就绪，开炮！
从终端里运行minecraft:
```bash
./run1.12.1.sh
```
或从启动器运行minecraft:  
按下 `play` 。

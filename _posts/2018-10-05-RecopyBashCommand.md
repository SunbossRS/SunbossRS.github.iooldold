---
layout: post
title: '重新自定义命令'
tags: linux
img: 'https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/DefineTerminalCoommand/cover.png'
---

Command apt-get -> brew

---

喜欢玩GNU的人都知道，linux的bash可出名了。  
~~我们可以拿kali linux的bash来搞别人的wifi~~  
不过，你们会不会觉得，bash但是不能修改命令？  
最近装上了Macintosh，刚好搭建在FreeBSD，自带GNU Nano...  
所以我拿bash来搞事情了....  
  
### 1.打开终端
做修改命令的，我们还是要打开终端.  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/DefineTerminalCoommand/01.png)

### 2. 开始正题
我们输入命令
```bash
cd /bin/
```
来把终端定位到根目录里`bin`的这个文件夹。  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/DefineTerminalCoommand/02.png)  
之后我们来`ls`一下看看里面有什么内容。  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/DefineTerminalCoommand/03.png)
我们可以看到，这里面差不多背全了我们使用过的命令。  
我们便可以使用`cp`命令来复制这些命令题并重新命名。  
这里庄主要把`cp`这个命令弄成`copy`.  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/DefineTerminalCoommand/04.png)
权限不够。需要在我们的*复制*的这个命令前加个`sudo`.  
```bash
修改前：
  cp "cp" "copy"
修改后：
  sudo cp "cp" "copy"
```
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/DefineTerminalCoommand/05.png)
现在你们会看到，命令成功的运行。我们再列出一下，这里多出了copy！对！  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/DefineTerminalCoommand/06.png)  
不需要重启，立刻可以使用，哈哈！  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/DefineTerminalCoommand/07.png)  
试了试echo刻录号`>`，还真有document.txt这个内容，能行，真棒！
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/DefineTerminalCoommand/08.png)  
搞坏mkdir君...(猥琐的笑容)
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/DefineTerminalCoommand/09.png)  
emmm
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/DefineTerminalCoommand/10.png)  
搞坏mv君(笑得灿烂)...
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/DefineTerminalCoommand/11.png)
rm君已死亡[滑稽]
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/DefineTerminalCoommand/12.png)
  
*修改于2018年10月19日*   
--我已经把电脑改回windows了...

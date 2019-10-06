---
layout: post
title: 'ubuntu18.04运行wine QQ'
tags: linux ubuntu
---

新版本ubuntu_

---

### 1.下载wine
首先,我们运行命令:
```bash
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
sudo apt-get update
sudo apt-get install winehq-devel
wine --version
```
当你运行`wine --version`时,如果反馈出`wine *版本号* `的话,代表你的wine就是在xx版本.  
  
### 2.准备你的.exe包
到[QQ官网](https://im.qq.com)下载一个tim或者qq

### 3.在wine里添加一定的函数库
在终端里输入:(不要用root)
```bash
winecfg
```
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunQQonUbuntu18.04/01.png)  
然后点击`函数库`,添加以下函数:
```
*ntoskrnl.exe
*riched20
*txplatform.exe
*msls31.dll
*dwrite.dll
```
然后把这三个函数弄成这样:  
```default
*ntoskrnl.exe          -->  停用
*riched20              -->  原装(windows)
*txplatform.exe        -->  停用
*msls31.dll            -->  原装(windows)
*dwrite.dll            -->  原装(windows)
```
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunQQonUbuntu18.04/02.png)  
  
亲测：  
停用`ntoskrnl.exe`是为了解决无法正常启动QQ的问题，使用原装windows的`riched20`是为了规避无法输入用户名的Bug，停用`txplatform.exe`是为了避免QQ无法完整退出而滞留整个Wine容器的问题，使用原装的`msls31.dll`和`dwrite.dll`是因为不要让这两个控件因为不受控制而让QQ突然崩溃。  
然后保存.  
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunQQonUbuntu18.04/03.png)  

### 4. 设置字体(修复中文乱码的bug)
打开nano或者gedit然后输入以下内容：（我这里用root运行nano）
```reg
REGEDIT4
[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\FontSubstitutes]
"Arial"="WenQuanYi Zenhei"
"Arial CE,238"="WenQuanYi Zenhei"
"Arial CYR,204"="WenQuanYi Zenhei"
"Arial Greek,161"="WenQuanYi Zenhei"
"Arial TUR,162"="WenQuanYi Zenhei"
"Courier New"="WenQuanYi Zenhei"
"Courier New CE,238"="WenQuanYi Zenhei"
"Courier New CYR,204"="WenQuanYi Zenhei"
"Courier New Greek,161"="WenQuanYi Zenhei"
"Courier New TUR,162"="WenQuanYi Zenhei"
"FixedSys"="WenQuanYi Zenhei"
"Helv"="WenQuanYi Zenhei"
"Helvetica"="WenQuanYi Zenhei"
"MS Sans Serif"="WenQuanYi Zenhei"
"MS Shell Dlg"="WenQuanYi Zenhei"
"MS Shell Dlg 2"="WenQuanYi Zenhei"
"System"="WenQuanYi Zenhei"
"Tahoma"="WenQuanYi Zenhei"
"Times"="WenQuanYi Zenhei"
"Times New Roman CE,238"="WenQuanYi Zenhei"
"Times New Roman CYR,204"="WenQuanYi Zenhei"
"Times New Roman Greek,161"="WenQuanYi Zenhei"
"Times New Roman TUR,162"="WenQuanYi Zenhei"
"Tms Rmn"="WenQuanYi Zenhei"
```
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunQQonUbuntu18.04/04.png)  
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunQQonUbuntu18.04/05.png)  
保存．  
然后在终端输入`wine regedit`  
`注册表>导入注册表文件>zh.reg`  
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunQQonUbuntu18.04/06.png)

### 5.安装
```bash
wine ~/下载/*文件名*.exe
```
然后进入安装页面.

### 6.进入
这时安装好了,你的QQ应处于`~/.wine/drive_c/Program Files (x86)/Tencent/QQ/Bin`目录下.  
使用
```bash
wine .wine/drive_c/Program\ Files\ \(x86\)/Tencent/QQ/Bin/QQ.exe
```
来运行QQ.以后，运行QQ就是用上面的那个命令。
---
效果图：
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunQQonUbuntu18.04/07.png)
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunQQonUbuntu18.04/08.png)
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunQQonUbuntu18.04/09.png)
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunQQonUbuntu18.04/2018-06-19%2000-35-47%20%E7%9A%84%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png)
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunQQonUbuntu18.04/2018-06-19%2000-37-00%20%E7%9A%84%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png)
有时QQ显示的效果受到'不能运行'，就会出现错误。  
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunQQonUbuntu18.04/2018-06-19%2000-40-18%20%E7%9A%84%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE.png)
  
End-

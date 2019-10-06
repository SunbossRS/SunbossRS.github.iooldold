---
title: 'Ubuntu系统安装apache'
layout: post
tags: linux
img: https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunApacheOnUbuntu/cover.png
---
~~你需要一个好的linux系统~~  

![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunApacheOnUbuntu/04.jpg)
安装apache。
```bash
sudo apt-get install apache2
```
他会叫你是否确认安装，你就选yes。  
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunApacheOnUbuntu/01.jpg)  
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunApacheOnUbuntu/02.jpg)  
安装完成后，你就可以使用以下命令调试apache。
开启apache
```bash
sudo apache2ctl -k start
```
关闭apache
```bash
sudo apache2ctl -k stop
```
重启apache
```bash
sudo apache2ctl -k restart
```
虚拟目录在 httpd.conf 中，看如下:
```apache  
<VirtualHost *>
DocumentRoot "/home/你的ubuntu用户名/目录"
ServerName *自定义域名*
<Directory "/home/你的ubuntu用户名/目录"> allow from all Options +Indexes </Directory>
</VirtualHost>
```
把上面的信息补充好。再看这里。
在 `/etc/apache2/sites-enabled/000-default`中，里面有这样的一段内容：
```bash
NameVirtualHost *
<VirtualHost *>
ServerAdmin webmaster@localhost
DocumentRoot /var/www/
```
这是设置虚拟主机的，对我来说没什么意义。里面的```ServerAdmin```是指管理员邮箱。```DocumentRoot```不用理他。

### 试验

因为上面我们已经完成了，基本上的配置了。所以，现在我们输入```*你的自定义域名*```或者```http://localhost/```
**记住!上面用了自定义域名的，必须要重启apache才能生效!**
```bash
sudo apache2ctl- k restart
```
就会看到```it's work!```的字样了。  
![avatar](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/RunApacheOnUbuntu/05.jpg))

### 开源站

如果你不想让这个网站`it's work!`，你可以试一试改成开源站！  
!> 将`Apache24/htdocs`文件夹下面的`index.html`删除，因为默认显示这个页面。  
我们刚才看到的`It's works!`页面就是这个文件的内容，然后将我们的文件及文件夹放到`Apache24/htdocs`下面，就可以成为开源站了。这时候，你看到的标题是`index of /`了。  
  


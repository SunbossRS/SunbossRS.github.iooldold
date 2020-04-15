---
layout: post
title: 注册freenom域名并弄到GithubPage
tags: github
---

Register FreenomDomain -> GithubPage cname

---

相信大家都知道我的域名[srsyrzz.ml](https://sunbossrs.github.io/)已经开通并可以使用在我的博客里。  
你也可以做得到，看这篇文章，你就能！
  
### 01. 注册一个域名
进入[freenom](http://freenom.com)来注册一个域名.在这个框框里输入你的主域。  
点击 `检查可用性` ，这时候可能看不到有任何变化出现，浏览器也没有加载。  
不过那是在后台运行。等一会儿之后，页面会自动变化，这时候有几个免费域名可以给你选。  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/01.jpg)
选好之后，你就可以直接选择完成进入下一步。在域名选项的最右侧有个`period`选项，你可以在它的列表里选择你想申请免费的时间，比如，可以免费申请一年，那么我选择`12 months free`这个选项。  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/02.png)  
下一步，会叫你输入邮箱进行验证或登录google或facebook等社交账户进行验证。
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/03.png)
点击下面`verify my email address`来验证你的邮箱。这时候你的邮箱会收到一条信息，验证后，你必须填写一些基本的信息。  
信息填完成，点击完成订购按钮，这时候会再给你发一封确认订购的邮件，你需登陆邮箱完成确认订购。确认完成后你用上面设置的账户进行登陆，登陆后点击右上角的service选项下的My Domians。
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/04.png)  
选择你的那个域名，点击manage domain.  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/05.jpg)
点击 `manage freenom dns` 进去
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/06.jpg)  
看到一片空白。
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/07.jpg)  
这时候，要用到我们的命令行了。 
 
### 2. 知道自己的dns
在cmd.exe命令行里输入以下内容：
```cmd
ping 你的github用户名称.github.io
```
而在linux，需要使用以下命令
```bash
ping -c 1 你的github用户名称.github.io
```
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/08.png)
然后你会看到返回dns，这个就是你的网站dns。  
  
## 03. 做域名记录值
这时，你就要做域名记录。  
按照以下图片进行做域名记录。  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/09.png)  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/10.png)  
  
### 04. 绑定域名
转到你的github网站仓库  
在网站仓库的根目录里添加一个名字叫做`CNAME`的文件。**记住，不要有后缀！**，在该文件里写上你自己的域名，保存文件。
  
### 05. 查看消息，就可以使用你的域名
完成以上步骤后，点击网站仓库右上边的settings*，找到`Github page`下面的小卡片似的东西，会标出一行蓝色的一条，意思是说正在把网站导入到你的域名里去。  
你可以通过不断刷新页面来看有没有变化。  
如果看到那一条东西变绿了还写着你的域名，旁边还有个钩，你成功了。  
如果你看见那个条条不见了，你可能是使用了别人的dns，你必须要通过`ping`你自己的github自带的域名网站来获取你自己的dns，然后记住他，看第三部分。  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/11.png)  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/12.png)  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/freenomdomain/13.png)

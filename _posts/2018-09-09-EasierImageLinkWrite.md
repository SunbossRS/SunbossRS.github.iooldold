---
layout: post
title: 论如何简单加入图片
tags: 网站 教程 技术
---

Liquid imagebed -> ConfigYaml

---

相信大家在写博文的时候，有时都要使用图片的吧。有的使用的是其他博文的图库，有的是使用自己的...但是你们想过没有，如何简单的输入图片呢？  
使用过Github Page的人都知道在所创建的网站中，`_config.yml`变得非常有用，像个“大脑”一样记录着各种内容。  
所以，我们可以使用这个“大脑”来给我们的博客添加一个简便的输入图床链接的设置。  
**我们要看看你的博客支不支持_config.yml的键入和引用。**  
我们来测试测试。输入
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/EasierImageLinkWrite/01.png)
看看会不会显示**网站的作者**。看看下面：  
> 耀日庄主  
其实如上面看到的，你们可能看到的是“耀日庄主”，但是，其实是site.author。  
没错，我们很顺利地输入了这个表达式。所以....  
我们可以利用这个~~特性~~特点来表达。  
我们可以试着在`_config.yml`里输入这一段内容：
```yaml
# ImageBed link item
ImgLnk: http://github.com/SunbossRS/ImageSaver/raw/master
```
看看上面所说的。我们可以创建一个叫做`ImgLnk`的内容。  
这个链接里我们加了一个`raw/master`的目录.我们所看到的图片，带上的链接，都是需要`raw`(原生的)。如果我们不用原生的图片，在博客里将无法显示出图片的内容。  
如果你的项目`示范：项目ImageSaver`有多个文件夹，可像这样：
```
.
├ 博客图库
├ 喜爱的照片
├ 其他内容
```
那么，再打博文输入图片时，你可以这样打：

![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/EasierImageLinkWrite/02.png)

这样一来，我们就可以少敲一会儿键盘（虽然说linux党敲键盘还是很多的）
![pic](http://github.com/sunbossrs/blogcommentstore/raw/master/emoji/滑稽.png)
但也比到图库复制原生链接好。
**注意！前提是你的博客要支持`_config.yml`的引用！！**

---
layout: post
title: '在jekyll博客里设置gitalk评论系统'
tags: jekyll 
---

**转自[tea9博客的gitalk教程](https://tea9.xyz/2018/06/24/gitali_config.html)**  
**文章内容略有修改，请知悉!**

---

### 前言
大家好，今天来给大家介绍一款评论软件，它叫做[gitalk](https://gitalk.github.io)。  
这个评论软件基于github的issue。因为issue轻量化，所以作者采用issue进行收集数据。  
这个东西要怎么弄呢？有一定网站技术的人员一定知道，需要引入css文件和js。  
但是，我们要外加上我们的github。  
确保你的自建代码网站是在github创建的。  
如果是在coding.net或者是gitee(码云)的话，要记得打开issue功能。
这一个对于博客的评论系统，可以说是很厉害了。  
只要网上一搜gitalk，立刻会出现一大堆链接。都说gitalk的。  
在网上看到一篇hexo使用gitalk，其实，[jekyll](https://jekyllrb.com)的话和这个的设置差不多。  

### 01.注册GitHub Application
注册GitHub OAuth Application  
注册方法：在github主页右上角点击你的头像，settings，进入界面后点击developer settings,添加OAuth Application。  
![pic](https://coding.net/u/tea9/p/image/git/raw/master/blog_img/07/01.png)  
```
Application name:取一个霸气的名称 
Homepage URL:你的博客网址
Application description:项目描述  
Authorization callback URL:你的博容网址
```
注册成功后会获得Client ID和Client Secret  
![pic](https://coding.net/u/tea9/p/image/git/raw/master/blog_img/07/02.png)

### 02.配置_config.yml
在_config.yml这个文件里*(或者其他在jekyll里引用的site文件)*添加以下内容:
```yaml
gitalk: true
gitalk_clientid: '刚刚注册的ClientID'
gitalk_secret: '刚刚注册的Secret'
gitalk_repo: '用户名.github.io或者是一个存放评论的仓库'
gitalk_owner: 'github用户名'
gitalk_admin: 'github用户名'
gitalk_dfm: false
```
![pic](https://coding.net/u/tea9/p/image/git/raw/master/blog_img/07/03.png)  

### 03.修改post.html
打开网站根目录的`post.html`，这个文件一般在`_layouts`文件夹。在该文件里的`<html>`下面 添加以下内容:
```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.css">
```
弄完后，我们再走远一点。找到适合放评论的位置，在该文段下面添加以下字符：
```html
<div id="git_thread"></div>
```
添加完之后呢，记住要根据情况而定。 
在快要接近结尾的地方，**是在快要接近</body>的地方里**，添加以下字段：
```html
<script src="https://cdn.jsdelivr.net/npm/gitalk@1/dist/gitalk.min.js"></script>
<script>
  var gitalk = new Gitalk({
    clientID: '{{ site.gitalk_cilentid }}',
    clientSecret: '{{ site.gitalk_secret }}',
    repo: '{{ site.gitalk_repo }}',
    owner: '{{ site.gitalk_owner }}',
    admin: '{{ site.gitalk_admin }}',
    id: location.pathname,     
    distractionFreeMode: '{{ site.gitalk_dfm }}'  
  })
  gitalk.render('git_thread')
</script>
```
由于前面我们在 `_config.yml` 里输入过gitalk注册的消息，这里直接用*大括号表达式*.就是这么懒~  
就完事了~  
*感谢@tea9的支持和他在他的文章评论里发给我的修改内容*

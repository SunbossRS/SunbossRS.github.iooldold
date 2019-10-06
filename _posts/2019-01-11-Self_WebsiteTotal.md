---
layout: post
title: '如何让你的博客网站尾部显示查看人数统计'
tags: jekyll
img: 'https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/WebsiteShow/01.png'
---

请注意我曾在2018年的6月27日发过一个教程，也是讲这个的。可惜链接不管用了。  
现在你们看到的这篇文章是在之前的那篇文章加作修改。

---

首先，打开你的网站目录，打开你的网站结尾文件。  
在*Jekyll*里，网站结尾文件`footer.html`大多数是在`/_includes`目录下。如果没有找到结尾文件也不要着急，你在你的`index`里找到`<footer>`标签就行了。  
把这行代码插在*20xx-20xx版权所有 | Copyright xx*类型文字的上面。  
**再次提醒，原来的代码已经不行了。原来的代码是这样的**
```html
    <p>
    <div class="busuanzi-count">
      <script async src="https://dn-lbstatics.qbox.me/busuanzi/2.3/busuanzi.pure.mini.js"></script>
      <span class="site-uv" title="总点击人数">
					<img src="/assets/vendor/octicons/svg/person.svg" width="10" height="16">
			<span class="busuanzi-value" id="busuanzi_value_site_uv"></span></span>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <span class="site-pv" title="总点击量">
					<img src="/assets/vendor/octicons/svg/eye.svg" width="16" height="16">
			<span class="busuanzi-value" id="busuanzi_value_site_pv"></span></span>
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <span class="page-pv"title="本页面点击人数">
					<img src="/assets/vendor/octicons/svg/file-text.svg" width="12" height="16">
			<span class="busuanzi-value" id="busuanzi_value_page_pv"></span></span>
    </div>
    </p>
```
现在，你必须把域名指向`busuanzi.ibruce.info`而不是`dn-lbstatics.qbox.me`。  
另外，庄主我重新简化了代码。
代码如下。
```html
<!-- WebTotalCounter -->
 <script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>
 <span class="site-uv" title="总点击人数"><img src="/assets/vendor/octicons/svg/person.svg" width="10" height="16"><span class="busuanzi-value" id="busuanzi_value_site_uv"></span></span> &nbsp;&nbsp;|&nbsp;&nbsp;<span class="site-pv" title="总点击量"><img src="/assets/vendor/octicons/svg/eye.svg" width="16" height="16"><span class="busuanzi-value" id="busuanzi_value_site_pv"></span></span>&nbsp;&nbsp;|&nbsp;&nbsp;<span class="page-pv" title="本页面点击人数"><img src="/assets/vendor/octicons/svg/file-text.svg" width="12" height="16"><span class="busuanzi-value" id="busuanzi_value_page_pv"></span></span>
<!-- EndCounter -->
```
这里比较麻烦，因为指定了文件。  
请点击这个按钮，下载文件（svg包。）
<button href='https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/filedown/Wangzhantongji_svg.zip'>点击这里</button>
解压后看见assets文件夹，把assets文件夹放到网站的目录下。  
保存，再上传，看看你的网站页尾发生了什么？  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/WebsiteShow/01.png)

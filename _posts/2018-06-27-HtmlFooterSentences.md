---
layout: post
title: '如何让你的博客结尾显示名言警句'
tags: jekyll 反馈 网站
---

使用lwl12的精简源。

---

打开你的网站目录，打开你的`footer.html`网站结尾文件。  
然后把这行代码插在`</section>`的下面。
```html
<p>
<script type="text/javascript" src="https://api.lwl12.com/hitokoto/main/get?encode=js&charset=utf-8"></script><div id="lwlhitokoto"><script>lwlhitokoto()</script></div>
</p>
```
保存再上传，看看你的网站页尾发生了什么？

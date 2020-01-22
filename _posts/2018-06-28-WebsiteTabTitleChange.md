---
layout: post
title: '如何在切换网站后改变标题'
tags: jekyll
img: 'https://coding.net/u/SunbossRS/p/blog_web_source/git/raw/master/img/mt1/02.png'
---

funnytitle有趣的标题~

---

打开你的网站目录，打开你网站的一个网站服务文件，的。  
copy这行代码
```html
<script>
 /**
  *Funny Title
 */
  var title=document.title;
  var hiddenProperty = 'hidden' in document ? 'hidden' :
      'webkitHidden' in document ? 'webkitHidden' :
          'mozHidden' in document ? 'mozHidden' :
              null;
  var visibilityChangeEvent = hiddenProperty.replace(/hidden/i, 'visibilitychange');
  var onVisibilityChange = function(){
      if (!document[hiddenProperty]) {
          document.title = title;
      }else{
          document.title = "你找不到我啦! -" + title;
      }
  }
  document.addEventListener(visibilityChangeEvent, onVisibilityChange);
</script>
```   
`document.title = "你找不到我啦! -" + title;`是在tab切换后显示的标题。你可以自己修改。
保存再上传，看看你的网站页尾发生了什么？  
![pic](https://coding.net/u/SunbossRS/p/blog_web_source/git/raw/master/img/mt1/02.png)

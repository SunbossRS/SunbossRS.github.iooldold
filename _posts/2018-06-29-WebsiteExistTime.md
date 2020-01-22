---
layout: post
title: '网站的存在时间代码'
tags: jekyll
img: 'https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/WebsiteShow/03.png'
---

看网站已存在了多少天。

---

看看效果图  
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/WebsiteShow/03.png)
这次，你可以在页尾，也可以在一个html文件，或者其他html的文件  
输入代码:
```html
<script language=javascript>
function show_date_time(){
 window.setTimeout("show_date_time()", 1000);
 BirthDay=new Date("1/1/2018 18:27:01"); //注释:BirthDay即网站的“生日”，这里填写格式是[月/日/年 时:分:秒] 这里填上网站的创始日期
 today=new Date();
 timeold=(today.getTime()-BirthDay.getTime());
 sectimeold=timeold/1000
 secondsold=Math.floor(sectimeold);
 msPerDay=24*60*60*1000
 e_daysold=timeold/msPerDay
 daysold=Math.floor(e_daysold);
 e_hrsold=(e_daysold-daysold)*24;
 hrsold=setzero(Math.floor(e_hrsold));
 e_minsold=(e_hrsold-hrsold)*60;
 minsold=setzero(Math.floor((e_hrsold-hrsold)*60));
 seconds=setzero(Math.floor((e_minsold-minsold)*60));
 span_dt_dt.innerHTML="已存在"+daysold+"天，"+hrsold+"小时，"+minsold+"分钟，"+seconds+"秒。";
}
function setzero(i){
 if (i<10){
  i="0" + i
 };
 return i;
}
show_date_time();
</script>
```
把这样代码的创始日期填上，我这里的`"已存在"`可以删除掉。  
然后看看你的那个网页!

---
layout: page
title: 留言板
tagline: 言葉があります、伝えたいです！
permalink: /feedback
---

<div>这里是耀日庄主的留言板...耀日庄主会不定期进入这个页面来回复你哦！</div>
  
[返回主页]({{ site.url }})  

<br><br>

{% if site.data.social.vssue.enable == true %}
  {% include comments.html %}
{% endif %}


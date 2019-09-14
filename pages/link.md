---
layout: page
title: 友情链接
tagline: My friends.
permalink: /links
---

{% for f in site.data.friends %}
<div class="link-chip">
 <img alt="{{f.describe}}" src="{{f.image}}" class="link-chip-icon">
 <a title="{{f.describe}}" target="_blank" class="link-chip-title" href="{{f.url}}">{{f.name}}</a>
</div>
{% endfor %}

[返回主页]({{ site.url }})

<br><br>

### 如何申请?
首先，你要确保你的网站中没有违规的内容(比如违规、广告、黄色内容等等)。  
确认过没有后，请在下方的评论留言板里输入以下内容，打斜体的内容要修改。
> 我已确认我的网站不存在任何不良信息。  
> 名称: *我的网站*  
> 链接: *https://*  
> 头像链接: *https://*  
> 描述: *这是我的网站*  
如果要举报，请输入:
> 我要举报*网站名称*。  
> 原因: *填写原因*  

<br><br>

{% if site.data.vssue.enable  == true %}
  {% include comments.html %}
{% endif %}
{% include scripts.html %}

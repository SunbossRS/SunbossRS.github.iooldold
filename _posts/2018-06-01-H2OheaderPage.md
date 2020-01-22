---
layout: post
title: '制作H2O主题页头html'
tags: jekyll
---

儿童节快乐！  
可怜我，还在敲代码。。
  
---

### 写在前面
*（在开始前请务必确定你的jekyll博客是H2O的主题！！）*  
我们再来看看`index.html`的内容。
  
### 1.配置页面
来看上面，有个`Yaml Header`。  
我们略过它，来看下面:  
```
配置主体颜色/以h2显示标题/以h2显示描述/{如果有header-img选项，运用上去}/<加入header-img>
```  
我们copy这几行代码。  

### 2.加入页面&加入页面导航
在这个h2o主题加入`*你想要的页头名称*.html`这样一个文件。  
然后在`_config.yml`的`nav:`列表里加入这样的内容:
```yaml
name: '/path/to/file.html'
```
`name`换成页面导航栏的标题  
`'/path/to/file.html'`换成指向那个html文件的内容

### 3.写代码
打开你的那个html,然后把刚才说的代码复制进来.  
然后空一格,输入你的自定义html代码.  
输入完后,空两行,**在那一行的第一格,记住!第一格**输入以下内容(其实就是复制粘贴而已....)
```html
</main>
{% raw %}
{% include footer.html %}
{% endraw %}
```
  
保存! 

### 4.上传到github！
  
### 5.打开你的网站！

---
layout: post
title: '写一篇Markdown博客文章'
tags: 思考
img: 'https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/lovely-photo/SteveGet.jpeg'
---
  
我这里用的是Jekyll创建的博客，它可以支持用markdown写博文。  
可以利用Jekyll写博文。  
写一篇Markdown博文要有好的编辑器。你可以用系统自带的记事本。对于萌新来说，可以使用Markdown的编辑器.  
> Windows用户可以用`MarkdownPad`或其他。  
> Linux用户可以用自带的编辑器或其他，你自己看着办。  
> Android用户可以用`MarkdownX`或其他。    
Jekyll的`_posts`文件夹里面存放你的所有博文。  
你从网上下载回来一个Jekyll模板，`_posts`目录里有几篇示例文章。  
所以写一篇博文要按照`年-月-日-标题(要空格的用-代替或其他).md`进行命题。  
  
### 段落
直接在上面写一段字就是一段文本。  
如果要换行，请在段落的尾部按下两个`空格`来强制换行。

### 标题
因为markdown基于html，所以一共有六级标题：
```
# 标题1号
## 标题2号
### 标题3号
#### 标题4号
##### 标题5号
###### 标题6号
```

### 强调或突出
这里有几种方法来表达所要表达的意思。
```
*突出*
_突出_

*强调**   
__强调__
```
### 链接
内联风格(title 是可选的):
```
[MarkdownX 官方网站](http://markdownx.ryeeeeee.com/ "Title")
```
内联风格 (title 是可选的):
```
定义内容:
[MarkdownX 官方网站][id]

之后，可以在文档的其他任意地方, 引用这个链接:
[id]: http://markdownx.ryeeeeee.com/  "Title"
```

### Email
```
这个 email <adminroot@web.com> 链接.
```

### 图片
内联风格 (title 是可选的):
```
![定义-图片名称](/path/img.jpg "标题")
```
引用风格 (title 是可选的):
```
![定义-图片名称][id]

[id]: /url/to/img.jpg "标题"
```

### 列表
有序列表:
```
1. 列表项 1
2. 列表项 2
```  
也就是在前面加上序号  
  
无序列表:
```
* 列表项 1
* 列表项 2

- 列表项 3
- 列表项 4
```
列表项缩进两个空格就可以创建一个嵌套的列表：
```
1. 列表项 1
  1. 嵌套的列表可以是有序的
  2. 格式和正常的有序、无序列表没有差异
2. 列表项 2
  * 嵌套的列表可以是无序的
    * 这个嵌套的列表项有4个空格的缩进，因为它的父列表项自身就带有2个空格的缩进
    * 还允许更多层的嵌套
3. 列表项 3
```

### 引用
```
> 段落前面添加大于号和空格，就能够形成引用段落。

> > 这是嵌套的引用....
```

### 代码文本块
`内联代码` 使用反引号包含。  
输入:
```
`<html>`是一个html文档的开始
```
实际:  
`<html>`是一个html文档的开始

### 代码块
三个反引号，之后后面就是代码块。  
如果要结束代码块，请换行后三个反引号。  
但是在代码块中不需要两个空格来换行。

### 分割线
三个或更多的星号或横杠：
```
*
-
以上符号可以进行分割线
```

### 删除线
通过两个波浪号将字符包含：  
输入:
```
~~错误的文本~~
```
输出:  
~~错误的文本~~

### 表格
需要横纵对齐。  
输入:
```
First  | Second  | Third 
------ |-------- |--------
Content| Play    | Access
Explore| Kernel  | Funtion
Search | None    | Act
Call   | Language| text
box    | Set     | Attack
```
输出:  
First   |Second   |Third
------- |-------  |------
Content | Play    | Access
Explore | Kernel  | Funtion
Search  | None    | Act
Call    | Language| text
box     | Set     | Attack

### Yaml Header
一般写Jekyll Markdown文章的开头是这样的:
```
---
layout: post
title: 文章标题
tags: 标签。以一个空格来分隔标签
category: 归档
---
```
所以要记住，在一个选项冒号的后边要空一格。   
  
现在就讲到这么多了，快去写一篇你的博文吧！

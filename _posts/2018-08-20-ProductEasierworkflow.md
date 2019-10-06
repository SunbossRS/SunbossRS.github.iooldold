---
layout: post
title: 放松你的繁琐步骤！
tags: github jekyll
img: https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/InitJekyllMarkdownArticle/cover.png
---

easier.workflow.project

---
  
今天，我开始制作了一个新作品。  
众人皆知，脚本可以让原来的一下一下变成一下子运行全部。  
所以，我制作了这个作品。
我来给大家介绍一下如何使用。  

### 01. 克隆作品仓库
先clone下来，执行命令
```bash
clone https://github.com/SunbossRS/EasierWorkflow.git
```

### 02. 使用吧
运行命令`ls`，会看见有`ForLinux``JekyllThings``Upload`和`docs`几个目录。  
`docs`是Markdown网页存放处。  
`ForLinux`是提供给Linux的用户们使用的实用工具。  
`JekyllThings`是提供给Jekyll博客的用户们的实用工具。  
`Upload`是上传工具。

### 特点
- 使用较少的行来制作该脚本作品
- 制作文本画时加上`-e`选项，把几行精简到一行
- 需要把要用的脚本文件集到一个文件夹内，达到方便，部门化

### 例子
比如使用`GitUpload.sh`，需要在要用的git仓库根目录里创建`$WorkflowUse`文件夹，然后把`GitUpload.sh`复制到`$WorkflowUse`。

### 图片
![pic](https://coding.net/u/SunbossRS/p/GotBlogDowner/git/raw/master/img/InitJekyllMarkdownArticle/01.png)   

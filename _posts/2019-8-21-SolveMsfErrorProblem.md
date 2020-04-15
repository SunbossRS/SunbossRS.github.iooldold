---
layout: post
title: 关于msf进去时报错的解决方法
date:  15:40:19 +0800
tags: 
img: 
---
### 前言
我在有一次进Msfconsole的时候，结果没进去。  
它会报错：
```text
　　/usr/share/metasploit-framework/lib/msf/core/payload/android.rb:87:in `not_after=': bignum too big to convert into `long' (RangeError)
        from /usr/share/metasploit-framework/lib/msf/core/payload/android.rb:87:in `sign_jar'
        from /usr/share/metasploit-framework/lib/msf/core/payload/android.rb:118:in `generate_jar'
        from /usr/share/metasploit-framework/modules/payloads/singles/android/meterpreter_reverse_tcp.rb:44:in `generate_jar'
        from /usr/share/metasploit-framework/lib/msf/core/payload/android.rb:38:in `generate'
        from /usr/share/metasploit-framework/lib/msf/core/payload.rb:204:in `size'
        from /usr/share/metasploit-framework/lib/msf/core/payload_set.rb:91:in `block in recalculate'
        from /usr/share/metasploit-framework/lib/msf/core/payload_set.rb:78:in `each_pair'
        from /usr/share/metasploit-framework/lib/msf/core/payload_set.rb:78:in `recalculate'
        from /usr/share/metasploit-framework/lib/msf/core/modules/loader/base.rb:251:in `block in load_modules'
        from /usr/share/metasploit-framework/lib/msf/core/modules/loader/base.rb:248:in `each'
        from /usr/share/metasploit-framework/lib/msf/core/modules/loader/base.rb:248:in `load_modules'
        from /usr/share/metasploit-framework/lib/msf/core/module_manager/loading.rb:119:in `block in load_modules'
        from /usr/share/metasploit-framework/lib/msf/core/module_manager/loading.rb:117:in `each'
        from /usr/share/metasploit-framework/lib/msf/core/module_manager/loading.rb:117:in `load_modules'
        from /usr/share/metasploit-framework/lib/msf/core/module_manager/module_paths.rb:41:in `block in add_module_path'
        from /usr/share/metasploit-framework/lib/msf/core/module_manager/module_paths.rb:40:in `each'
        from /usr/share/metasploit-framework/lib/msf/core/module_manager/module_paths.rb:40:in `add_module_path'
        from /usr/share/metasploit-framework/lib/msf/base/simple/framework/module_paths.rb:50:in `block in init_module_paths'
        from /usr/share/metasploit-framework/lib/msf/base/simple/framework/module_paths.rb:49:in `each'
        from /usr/share/metasploit-framework/lib/msf/base/simple/framework/module_paths.rb:49:in `init_module_paths'
        from /usr/share/metasploit-framework/lib/msf/ui/console/driver.rb:219:in `initialize'
        from /usr/share/metasploit-framework/lib/metasploit/framework/command/console.rb:62:in `new'
        from /usr/share/metasploit-framework/lib/metasploit/framework/command/console.rb:62:in `driver'
        from /usr/share/metasploit-framework/lib/metasploit/framework/command/console.rb:48:in `start'
        from /usr/share/metasploit-framework/lib/metasploit/framework/command/base.rb:82:in `start'
        from /usr/bin/msfconsole:48:in `<main>'
```
我上网查过，这是因为Msfconsole长时间没有使用。

### 解决方法
卸载之前的Msfconsole
```bash
apt remove metasploit-framework
```
然后进入`/etc/apt/sources.list`添加源：
```text
deb http://http.kali.org/kali kali-rolling main non-free contrib //官方源
deb http://mirrors.ustc.edu.cn/kali sana main non-free contrib
deb http://mirrors.ustc.edu.cn/kali-security/ sana/updates main contrib non-free
deb-src http://mirrors.ustc.edu.cn/kali-security/ sana/updates main contrib non-free
deb http://mirrors.aliyun.com/kali sana main non-free contrib
deb http://mirrors.aliyun.com/kali-security/ sana/updates main contrib non-free
deb-src http://mirrors.aliyun.com/kali-security/ sana/updates main contrib non-free
deb http://mirrors.163.com/debian/ jessie main non-free contrib
deb http://mirrors.163.com/debian/ jessie-updates main non-free contrib
deb http://mirrors.163.com/debian/ jessie-backports main non-free contrib
deb-src http://mirrors.163.com/debian/ jessie main non-free contrib
deb-src http://mirrors.163.com/debian/ jessie-updates main non-free contrib
```
更新：
```bash
apt-get update
```
下载Msfconsole安装程序：
```bash
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall
```
给予权限：
```bash
chmod +x msfinstall
```
运行程序：
```bash
./msfinstall
```
启动`postgresql`：
```bash
service postgresql start
```

### 解决`Msfconsole`的`Database cache not built yet`
关掉打开了`Msfconsole`的终端，然后在新的终端里运行：
```bash
msfd init
```

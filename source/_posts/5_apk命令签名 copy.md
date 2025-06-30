---
title: apk命令签名
date: 2025-06-30 16:01:00
comments: true  # 启用评论
updated: 2025-06-30 16:01:00
tags: [apk,签名]
categories: [技术文章]
description:  apk命令签名
keywords: apk,签名
---
jarsigner -verbose -keystore  D:\mykey\my.jks -signedjar D:\mykey\signed.apk D:\mykey\aaa\myunsign.apk  abc

 D:\mykey\my.jks  秘钥地址

D:\mykey\signed.apk  签名包输出位置

D:\mykey\aaa\myunsign.apk   要打包的位置

abc  别名
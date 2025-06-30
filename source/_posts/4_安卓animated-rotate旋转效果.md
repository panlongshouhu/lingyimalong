---
title: 安卓animated-rotate旋转效果
date: 2025-06-30 15:44:00
comments: true  # 启用评论
updated: 2025-06-30 15:44:00
tags: [安卓,animated,动效,旋转]
categories: [技术文章]
description: 安卓animated-rotate旋转效果
keywords: 安卓,animated,动效,旋转
---
一、实现原理
该方法通过在 drawable 中定义旋转动画资源，并将其应用于 ProgressBar 控件，实现加载旋转效果。核心是利用 animated-rotate 标签配置旋转属性，并通过 ProgressBar 的 indeterminateDrawable 属性引用该动画。
二、具体实现步骤
1. 创建旋转动画资源文件
步骤 1：在 res/drawable 目录下创建 progress.xml
xml
<?xml version="1.0" encoding="utf-8"?>
<animated-rotate xmlns:android="http://schemas.android.com/apk/res/android"
    android:drawable="@drawable/ab"  <!-- 引用旋转的图片资源 -->
    android:pivotX="50%"            <!-- 水平旋转中心点（图片中心） -->
    android:pivotY="50%"            <!-- 垂直旋转中心点（图片中心） -->
    />

说明：
android:drawable 需替换为实际的图片资源（如 ab.png），需先将图片放入 res/drawable 目录。
pivotX 和 pivotY 设为 50% 表示以图片中心为旋转点。
2. 在布局文件中添加 ProgressBar
步骤 2：在 layout 目录下的布局文件中添加以下代码
xml
<ProgressBar
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:indeterminateBehavior="repeat"  <!-- 动画重复模式 -->
    android:indeterminateDuration="100"     <!-- 单次动画持续时间（毫秒） -->
    android:layout_centerInParent="true"    <!-- 居中显示 -->
    android:indeterminateDrawable="@drawable/progress"  <!-- 引用旋转动画资源 -->
    android:indeterminateOnly="true"        <!-- 仅显示加载动画，隐藏进度条 -->
    />


关键属性说明：
indeterminateBehavior="repeat"：设置动画循环播放。
indeterminateDuration="100"：动画每 100 毫秒完成一次旋转（可根据需求调整）。
indeterminateOnly="true"：隐藏进度条，仅显示旋转动画。
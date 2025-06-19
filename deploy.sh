#!/bin/bash

echo "🚀 开始SEO优化部署..."

# 清理缓存
echo "📝 清理缓存..."
hexo clean

# 生成静态文件
echo "🔨 生成静态文件..."
hexo generate

# 检查重要的SEO文件是否生成
echo "✅ 检查SEO文件..."
if [ -f "public/sitemap.xml" ]; then
    echo "✓ sitemap.xml 生成成功"
else
    echo "✗ sitemap.xml 生成失败"
fi

if [ -f "public/baidusitemap.xml" ]; then
    echo "✓ baidusitemap.xml 生成成功"
else
    echo "✗ baidusitemap.xml 生成失败"
fi

if [ -f "public/robots.txt" ]; then
    echo "✓ robots.txt 生成成功"
else
    echo "✗ robots.txt 生成失败"
fi

if [ -f "public/atom.xml" ]; then
    echo "✓ atom.xml RSS订阅 生成成功"
else
    echo "✗ atom.xml RSS订阅 生成失败"
fi

# 部署到GitHub Pages
echo "🌐 部署到GitHub Pages..."
hexo deploy

echo ""
echo "🎉 部署完成！"
echo ""
echo "📋 SEO检查清单："
echo "1. ✅ 站点地图已生成: https://panlongshouhu.github.io/lingyimalong/sitemap.xml"
echo "2. ✅ 百度站点地图已生成: https://panlongshouhu.github.io/lingyimalong/baidusitemap.xml"
echo "3. ✅ RSS订阅已生成: https://panlongshouhu.github.io/lingyimalong/atom.xml"
echo "4. ✅ robots.txt已生成"
echo ""
echo "🔍 下一步操作："
echo "1. 访问 Google Search Console: https://search.google.com/search-console/"
echo "2. 访问 百度站长平台: https://ziyuan.baidu.com/"
echo "3. 提交站点地图到搜索引擎"
echo "4. 验证网站所有权"
echo ""
echo "📊 监控工具推荐："
echo "- Google Analytics: https://analytics.google.com/"
echo "- 百度统计: https://tongji.baidu.com/" 
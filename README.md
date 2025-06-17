# 零壹码龙博客

一个基于 Hexo 框架和 3-hexo 主题构建的个人技术博客。

## 博客简介

- **博客名称**: 零壹码龙
- **副标题**: 记录编程路上的点点滴滴
- **描述**: 一个专注于编程技术分享的个人博客
- **框架**: Hexo
- **主题**: 3-hexo

## 本地开发

### 环境要求

- Node.js 16.x 或更高版本
- Git

### 安装依赖

```bash
npm install
```

### 本地预览

```bash
npm run server
```

访问 `http://localhost:4000` 查看博客。

### 构建

```bash
npm run build
```

生成的静态文件将保存在 `public` 目录中。

## 部署

本博客配置了 GitHub Actions 自动部署。当推送到 `main` 分支时，会自动构建并部署到 GitHub Pages。

### 手动部署

```bash
npm run deploy
```

## 写作

### 创建新文章

```bash
npx hexo new "文章标题"
```

### 创建新页面

```bash
npx hexo new page "页面名称"
```

## 主题配置

主题相关配置位于 `_config.3-hexo.yml` 文件中，可以根据需要进行个性化设置。

## 许可证

本项目采用 MIT 许可证。 
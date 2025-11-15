# 🚀 部署指南

## 方法一：GitHub Pages 部署（推荐）

### 步骤 1：创建 GitHub 仓库

1. 访问 [GitHub](https://github.com) 并登录
2. 点击右上角的 "+" → "New repository"
3. 填写仓库信息：
   - Repository name: `vaccine-landing-page`（或您喜欢的名字）
   - Description: `带状疱疹疫苗惠民活动落地页`
   - 选择 **Public**（公开仓库才能使用免费的 GitHub Pages）
   - **不要**勾选 "Add a README file"
4. 点击 "Create repository"

### 步骤 2：推送代码到 GitHub

在终端中执行以下命令：

```bash
cd "/Users/vivijiang/Desktop/我的落地页"

# 添加远程仓库（替换 YOUR_USERNAME 为您的 GitHub 用户名）
git remote add origin https://github.com/YOUR_USERNAME/vaccine-landing-page.git

# 推送到 GitHub
git push -u origin main
```

**如果推送失败，可能需要先配置 GitHub 认证：**
```bash
# 使用 GitHub CLI（推荐）
gh auth login

# 或者使用 Personal Access Token
# 访问：https://github.com/settings/tokens
# 生成一个新的 token，然后在推送时使用 token 作为密码
```

### 步骤 3：启用 GitHub Pages

1. 进入您的 GitHub 仓库页面
2. 点击 "Settings"（设置）
3. 在左侧菜单中找到 "Pages"
4. 在 "Source" 部分：
   - Branch: 选择 **main**
   - Folder: 选择 **/ (root)**
5. 点击 "Save"

### 步骤 4：获取网址并分享

等待 1-2 分钟后，刷新页面，您会看到：

```
Your site is published at https://YOUR_USERNAME.github.io/vaccine-landing-page/
```

**这就是您的永久网址！** 可以直接分享给别人。

---

## 方法二：Vercel 部署（更快）

### 使用 Vercel（无需命令行）

1. 访问 [Vercel](https://vercel.com)
2. 使用 GitHub 账号登录
3. 点击 "Add New..." → "Project"
4. 选择刚才创建的 GitHub 仓库
5. 点击 "Deploy"
6. 等待部署完成，获得一个 `.vercel.app` 域名

**优势：**
- 部署速度更快（通常 10 秒内完成）
- 自动 HTTPS
- 全球 CDN 加速
- 每次 git push 自动重新部署

---

## 方法三：Netlify 部署（拖拽式）

### 使用 Netlify Drop

1. 访问 [Netlify Drop](https://app.netlify.com/drop)
2. 直接将整个项目文件夹拖拽到网页上
3. 自动部署完成，获得一个网址
4. 可以修改为自定义的域名

**优势：**
- 最简单，无需任何配置
- 立即获得网址
- 免费

---

## 自定义域名（可选）

如果您有自己的域名（如 `www.vaccine-activity.com`），可以：

### GitHub Pages
1. 在仓库根目录创建 `CNAME` 文件
2. 文件内容写入您的域名：`www.vaccine-activity.com`
3. 在域名服务商处添加 CNAME 记录指向 `YOUR_USERNAME.github.io`

### Vercel/Netlify
1. 在项目设置中找到 "Domains"
2. 添加您的自定义域名
3. 按照提示配置 DNS 记录

---

## 更新网页

每次修改网页后，只需：

```bash
cd "/Users/vivijiang/Desktop/我的落地页"
git add .
git commit -m "更新内容"
git push
```

GitHub Pages / Vercel 会自动重新部署，1-2 分钟后网站就会更新。

---

## 常见问题

**Q: 网页打不开或显示 404？**
A: 等待 3-5 分钟，GitHub Pages 需要时间构建。

**Q: 图片不显示？**
A: 确保图片文件也已经 commit 并 push 到仓库。

**Q: 想要更快的访问速度？**
A: 使用 Vercel 或 Netlify，它们有全球 CDN。

**Q: 可以使用中文域名吗？**
A: 可以，但建议使用英文域名更通用。

---

## 需要帮助？

如遇到任何问题，请告诉我具体的错误信息，我会帮您解决！

# 📸 生成长图指南

有多种方式可以将网页生成为长图片，适合在微信、朋友圈等平台分享。

---

## 方法一：使用浏览器扩展（推荐）

### GoFullPage（Chrome/Edge）

1. **安装扩展**
   - Chrome: 访问 [Chrome Web Store](https://chrome.google.com/webstore)
   - 搜索 "GoFullPage - Full Page Screen Capture"
   - 点击"添加至 Chrome"

2. **使用方法**
   - 打开 `index.html` 网页
   - 点击浏览器右上角的 GoFullPage 图标
   - 等待截图完成（会自动滚动并截取整个页面）
   - 自动下载 PNG 图片

**优点：** 操作简单，效果好，支持长页面

### FireShot（Chrome/Firefox）

1. 安装 FireShot 扩展
2. 打开网页后点击扩展图标
3. 选择"捕获整个页面"
4. 选择保存格式（PNG 推荐）

---

## 方法二：使用在线工具

### Screenshot Guru

1. 访问 [https://screenshot.guru](https://screenshot.guru)
2. 输入网址（需要先部署到线上）
3. 点击"Take Screenshot"
4. 选择"Full Page"
5. 下载图片

### Web-Capture

1. 访问 [https://web-capture.net](https://web-capture.net)
2. 输入网址
3. 选择"Full Page Screenshot"
4. 下载高清长图

---

## 方法三：Mac 系统自带截图

### 使用 Safari 导出 PDF 再转图片

1. **用 Safari 打开网页**
   ```bash
   open -a Safari "/Users/vivijiang/Desktop/我的落地页/index.html"
   ```

2. **导出为 PDF**
   - 按 `Command + P`（打印）
   - 左下角点击"PDF" → "存储为 PDF"
   - 保存 PDF 文件

3. **PDF 转图片**
   - 用"预览"App 打开 PDF
   - 文件 → 导出 → 格式选择"PNG"
   - 调整分辨率（推荐 300 DPI）

### 使用 Chrome 无头模式（技术方法）

在终端执行以下命令：

```bash
# 生成完整页面截图
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  --headless \
  --disable-gpu \
  --screenshot="/Users/vivijiang/Desktop/我的落地页/screenshot.png" \
  --window-size=1920,1080 \
  --default-background-color=0 \
  "file:///Users/vivijiang/Desktop/我的落地页/index.html"
```

**优点：** 完全自动化，可以指定尺寸

---

## 方法四：使用开发者工具（Chrome/Edge）

1. **打开网页和开发者工具**
   - 按 `F12` 或 `Command + Option + I`
   - 或右键 → "检查"

2. **打开命令面板**
   - 按 `Command + Shift + P`（Mac）
   - 或 `Ctrl + Shift + P`（Windows）

3. **执行截图命令**
   - 输入 "screenshot"
   - 选择 "Capture full size screenshot"
   - 自动下载完整页面截图

**优点：** 无需安装扩展，Chrome 自带功能

---

## 推荐配置

### 最佳分辨率
- **微信朋友圈**: 1080px 宽度
- **海报打印**: 至少 2000px 宽度
- **屏幕展示**: 1920px 宽度

### 图片优化
生成图片后，可以使用以下工具压缩：
- [TinyPNG](https://tinypng.com) - 在线压缩
- [Squoosh](https://squoosh.app) - Google 出品

---

## 快速操作指南

### 最简单的方法（3步）：

1. 安装 Chrome 浏览器（如已安装跳过）
2. 用 Chrome 打开 `index.html`
3. 按 `Command + Shift + P`，输入 "Capture full size screenshot"

**完成！** 图片会自动下载到"下载"文件夹。

---

## 移动端预览

### 生成适合手机查看的长图

1. **在浏览器中调整视图**
   - 按 `F12` 打开开发者工具
   - 点击"切换设备工具栏"图标（或按 `Command + Shift + M`）
   - 选择设备：iPhone 12 Pro / iPhone 14 Pro
   - 截图（使用上述任意方法）

2. **这样生成的图片**
   - 适合在手机上查看
   - 文字大小合适
   - 布局为移动端优化版

---

## 常见问题

**Q: 图片太大，无法上传到微信？**
A: 使用 [TinyPNG](https://tinypng.com) 压缩图片，通常可以减小 70% 大小而不损失质量。

**Q: 截图颜色不对？**
A: 确保浏览器缩放比例为 100%（按 `Command + 0`）。

**Q: 想要特定尺寸的图片？**
A: 使用开发者工具的设备模拟器，可以自定义宽度和高度。

**Q: 需要添加水印？**
A: 使用在线工具如 [Canva](https://www.canva.com) 或 Mac 自带的"预览"App 添加文字。

---

## 我的推荐

### 快速分享用：
**方法四（开发者工具）** - 最快，Chrome 自带

### 高质量打印用：
**方法三（Safari PDF）** - 矢量图形，可无限放大

### 批量生成用：
**方法三（Chrome 命令行）** - 可以写脚本自动化

---

有任何问题随时告诉我！🎉

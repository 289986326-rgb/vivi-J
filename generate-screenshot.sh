#!/bin/bash

# 带状疱疹疫苗落地页截图生成脚本
# 使用方法: ./generate-screenshot.sh

echo "🎨 开始生成网页截图..."
echo ""

# 设置路径
CURRENT_DIR="$(cd "$(dirname "$0")" && pwd)"
HTML_FILE="file://${CURRENT_DIR}/index.html"
OUTPUT_FILE="${CURRENT_DIR}/落地页长图.png"

# 检查 Chrome 是否存在
CHROME_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

if [ ! -f "$CHROME_PATH" ]; then
    echo "❌ 未找到 Google Chrome"
    echo "请先安装 Chrome 浏览器: https://www.google.com/chrome/"
    echo ""
    echo "或者使用其他方法："
    echo "1. 用浏览器打开 index.html"
    echo "2. 按 Command + Shift + P"
    echo "3. 输入 'Capture full size screenshot'"
    exit 1
fi

# 生成截图
echo "📸 正在生成截图..."
"$CHROME_PATH" \
    --headless \
    --disable-gpu \
    --screenshot="$OUTPUT_FILE" \
    --window-size=1920,1080 \
    --default-background-color=0 \
    --virtual-time-budget=10000 \
    "$HTML_FILE" 2>/dev/null

# 检查是否成功
if [ -f "$OUTPUT_FILE" ]; then
    echo "✅ 截图生成成功！"
    echo "📁 保存位置: $OUTPUT_FILE"
    echo ""

    # 获取文件大小
    FILE_SIZE=$(du -h "$OUTPUT_FILE" | cut -f1)
    echo "📊 文件大小: $FILE_SIZE"
    echo ""

    # 询问是否打开
    echo "是否要查看图片? (y/n)"
    read -r response
    if [[ "$response" =~ ^[Yy]$ ]]; then
        open "$OUTPUT_FILE"
    fi

    echo ""
    echo "💡 提示:"
    echo "- 如需压缩图片，访问: https://tinypng.com"
    echo "- 如需编辑图片，双击图片用预览App打开"
    echo "- 可以直接分享到微信、朋友圈等平台"
else
    echo "❌ 截图生成失败"
    echo ""
    echo "请尝试手动方法："
    echo "1. 用 Chrome 打开 index.html"
    echo "2. 按 Command + Shift + P"
    echo "3. 输入 'Capture full size screenshot'"
fi

echo ""
echo "🎉 完成！"

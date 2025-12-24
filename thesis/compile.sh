#!/bin/bash
# 
# MIT Thesis 编译脚本
# 用法: ./compile.sh
#

echo "开始编译 MIT 论文..."
echo "======================================"

# 进入 thesis 目录
cd "$(dirname "$0")"

# 使用 latexmk 自动编译
latexmk -pdf MIT-Thesis.tex

if [ $? -eq 0 ]; then
    echo ""
    echo "======================================"
    echo "✓ 编译成功！"
    echo "PDF 文件: MIT-Thesis.pdf"
    echo ""
    echo "如果要清理临时文件，运行: latexmk -c"
    echo "如果要完全清理（包括PDF），运行: latexmk -C"
else
    echo ""
    echo "======================================"
    echo "✗ 编译出现错误"
    echo "请查看 MIT-Thesis.log 文件获取详细信息"
fi


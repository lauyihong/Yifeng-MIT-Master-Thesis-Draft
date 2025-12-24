# MIT 论文编译指南

## 快速开始

### 方法 1: 使用编译脚本（推荐）

```bash
cd thesis
./compile.sh
```

### 方法 2: 使用 latexmk（手动）

```bash
cd thesis
latexmk -pdf MIT-Thesis.tex
```

### 方法 3: 使用 pdflatex + biber（完整流程）

```bash
cd thesis
pdflatex MIT-Thesis.tex
biber MIT-Thesis
pdflatex MIT-Thesis.tex
pdflatex MIT-Thesis.tex
```

## 编辑和撰写

### 主要文件

- **MIT-Thesis.tex** - 主文件，包含文档结构和配置
- **abstract.tex** - 摘要
- **acknowledgments.tex** - 致谢
- **committee_members.tex** - 论文委员会成员页面
- **chapter1.tex ~ chapter6.tex** - 各章节内容
- **appendixa.tex, appendixb.tex** - 附录
- **mitthesis-sample.bib** - 参考文献数据库

### 编辑工作流

1. **编辑章节内容**：直接修改对应的 `.tex` 文件
2. **添加图片**：将图片放在 `figures/` 目录下
3. **添加参考文献**：在 `mitthesis-sample.bib` 中添加条目
4. **编译查看**：运行 `./compile.sh` 生成 PDF

### 推荐的编辑器

- **VS Code** + LaTeX Workshop 插件
- **TeXShop** (macOS)
- **Overleaf** (在线)
- **TeXworks** (跨平台)

## 清理临时文件

```bash
# 清理临时文件（保留 PDF）
latexmk -c

# 完全清理（包括 PDF）
latexmk -C
```

## 常见问题

### 1. 编译错误：未找到引用

**问题**：看到 "Citation undefined" 或 "Reference undefined" 警告

**解决**：多次运行编译（latexmk 会自动处理）

### 2. 图片未显示

**问题**：PDF 中图片位置显示为空白或占位符

**解决**：
- 检查图片路径是否正确
- 确保图片文件存在于 `figures/` 目录
- 支持的格式：PDF, PNG, JPG

### 3. 参考文献未显示

**问题**：参考文献列表为空

**解决**：
- 确保 `.bib` 文件格式正确
- 运行 biber 处理参考文献：`biber MIT-Thesis`
- 再次运行 pdflatex

## 系统要求

- **LaTeX 发行版**：TeX Live 2020 或更新版本
- **编译器**：pdfLaTeX 或 LuaLaTeX
- **参考文献工具**：biber（用于 biblatex）

## 修改记录

### 2024-12-24
- 修复了 biblatex 包冲突问题
- 添加了 multirow 包支持
- 修复了图片路径问题
- 修复了 abstract.tex 的嵌套环境问题
- 简化了作者和学位信息的格式

## 获取帮助

- MIT Thesis 模板文档：https://ctan.org/pkg/mitthesis
- LaTeX 帮助：https://www.latex-project.org/help/
- Overleaf 教程：https://www.overleaf.com/learn


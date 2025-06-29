# 简要说明

这个neovim的配置文件并不是我原创的，它的配色、高亮、以及lsp都是沿用那位大佬，其余的一些工具这是我自己配置。个人认为,这个配置文件最大的亮点是他的架构。
记得在你的终端设置环境变量VIMRC并且将.vimrc的路径赋值给他。

# 编辑说明

## 环境依赖

1. git
2. neovim

### 对于markdown

1. yarn
2. npm
3. node-js

### 对与latex(目前弃用)

- 对于Windows
    1. latex
    1. Zathura
    1. xdottool
    1. pstree
    
- 对于Mac
    1. skim

- 对于Linux
    1. SumatraPDF

### 对于模糊搜索

1. fzf
2. Rg
3. Ag

### 对于telescope

1. ripgrep

### 对于dap

目前提供了对c++的支持，现在dap的adapter是codelldb，注意在终端中codelldb命令确保已经指向codelldb的可执行文件。

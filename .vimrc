"===================
"基本设置
"===================

"显示行号
set number
"显示相对行号
"set relativenumber

"不兼容vi
set nocompatible

"语法高亮
syntax on

"不要交换文件和备份文件
set noswapfile
set nobackup
set nowritebackup

"历史操作
set undofile
set history=1000

"文件路径
set backupdir=~/.vim/.backup//  
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo// 

"错误警告
set noerrorbells
set visualbell

"检查是否有外部修改
set autoread

"显示当前模式
set showmode

"显示输入的命令
set showcmd

"启用鼠标
set mouse=a
set selection=exclusive 
set selectmode=mouse,key 

"编码
set encoding=utf-8

"颜色
set t_Co=256

"配色方案
colorscheme desert

" 显示中文帮助
if version >= 603
    set helplang=cn
endif

"共享剪贴板  
set clipboard^=unnamed,unnamedplus

"===================
"程序开发
"===================

"自动补全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction

"拼写检查
""set spell spelllang=en_us

"指令按 tab 自动补全
set wildmenu
set wildmode=longest:list,full

"============
"多窗口
"============

"=============
"格式
"=============

"自动缩进
set autoindent
filetype plugin indent on

"缩进长度
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4

"当前行高亮
set cursorline
set textwidth=80

"折行
set wrap
set linebreak
set wrapmargin=2

"滚动时光标距离边界位置
set scrolloff=5
"set sidescrolloff=15

"是否显示状态栏。0 不显示，1 只在多窗口时显示，2 显示
set laststatus=2

"在状态栏显示光标的当前位置（位于哪一行哪一列）
set ruler

"尾部空格以■显示
set listchars=tab:»■,trail:■
set list

"=================
"搜索
"=================

"匹配括号
set showmatch
"高亮匹配结果
set hlsearch
"自动跳到第一个匹配
set incsearch
"忽略大小写
set ignorecase

"==============
"会话
"==============

"==============
"快捷键
"==============

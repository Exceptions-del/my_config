set nocompatible
set helplang=cn          " 改帮助文档为中文(需要先安装中文文档)
set nrformats=           " 改8进制为10进制
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set nu                   " 开启行号
set rnu                  " 开启相对行号显示
set cursorline           " 高亮显示当前行
set whichwrap+=<,>,h,l   " 设置光标键跨行
set ttimeoutlen=0        " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
"----------------------------------------------------------------------

" 代码缩进和排版
"----------------------------------------------------------------------
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set backspace=2          " 使用回车键正常处理indent,eol,start等
set sidescroll=10        " 设置向右滚动字符数
set nofoldenable         " 禁用折叠代码

" 代码补全
"----------------------------------------------------------------------
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"----------------------------------------------------------------------
" 搜索设置
"----------------------------------------------------------------------
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

"----------------------------------------------------------------------
" 缓存设置
"----------------------------------------------------------------------
" set nobackup            " 设置不备份
" set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
" set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"----------------------------------------------------------------------

" 编码设置
"----------------------------------------------------------------------
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030


" 命令行模式映射
cmap src source ~\config.vim
cmap re-w \v'(([^']\|'\w)+)'

" 格式化标点间的空格
cmap fmt, %s/\v\_s\ze\,//g \| %s/\v\,\zs(\_S)/ \1/gc
cmap fmt. %s/\v\_s\ze\.//g \| %s/\v\.\zs(\_S)/ \1/gc
cmap fmt3 %s/\v\,\zs(\_S)/ \1/g
cmap fmt4 %s/\v\.\zs(\_S)/ \1/g

" 修正普通模式下的 & 命令, 并为可视模式创建一个类似的命令
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" 快速切换是否禁用高亮功能
nnoremap <silent><C-l> :<C-u>set hlsearch!<CR><C-l>
" 切换是否换行(原键是在Gvim下是查找)
nnoremap <F4> :set wrap!<CR>  
" 复制缩进开关
nnoremap <f5> :set paste!<CR>


" 绑定 %% 为EX模式下输入工作路径 %^ 则输入当前文件名
cnoremap <expr> %^ getcmdtype() == ':' ? expand('%:p') : '%^'
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:p:h') : '%%'

" j 和 k 移动修改为移动到屏幕行,而不是实际行
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

noremap <c-z> <NOP>

"---------------------------------------------

" matchit插件
set nocompatible
filetype plugin on
runtime macros/matchit.vim

" 启动netrw 插件
set nocompatible
filetype plugin on

" 扩展名
set suffixesadd+=.py
set suffixesadd+=.c
set suffixesadd+=.cpp
set suffixesadd+=.js
set suffixesadd+=.txt
set suffixesadd+=.html
set suffixesadd+=.css
set suffixesadd+=.sh
set suffixesadd+=.md
set suffixesadd+=.markdown


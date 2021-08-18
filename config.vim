" 通用设置

"----------------------------------------------------------------------
set nocompatible
set helplang=cn          " 改帮助文档为中文(需要先安装中文文档)
set nrformats=           " 改8进制为10进制
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
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
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"----------------------------------------------------------------------

" 编码设置
"----------------------------------------------------------------------
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

" gvim/macvim设置
"----------------------------------------------------------------------
if has("gui_running")
    let system = system('uname -s')
    
    noremap <C-a> <C-a>
    noremap <C-f> <C-f>         
    " set guifontwide=黑体:h18:cGB2312
    " set guifont=Hack\ Regular:h16   " 设置字体
    " set guioptions-=m           " 隐藏菜单栏
    set guioptions-=T           " 隐藏工具栏
    set guioptions-=L           " 隐藏左侧滚动条
    set guioptions-=r           " 隐藏右侧滚动条
    set guioptions-=b           " 隐藏底部滚动条
    set showtabline=0           " 隐藏Tab
endif



"----------------------------------------------------------------------

" MarkdownPreview 配置
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preivew_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml' : {},
    \ 'maid': {},
    \ 'disable_sync_croll' : 0,
    \ 'sync_croll_type' : 'middle',
    \ 'hide_yaml_meta' : 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highligh_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = ' [$(name)]'

let g:mkdp_path_to_chrome = ""
" 设置 chrome 浏览器的路径（或是启动 chrome（或其他现代浏览器）的命令）
" 如果设置了该参数, g:mkdp_browserfunc 将被忽略

let g:mkdp_browserfunc = ''
" vim 回调函数, 参数为要打开的 url

let g:mkdp_auto_start = 0
" 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在打开
" markdown 文件的时候打开一次

let g:mkdp_auto_open = 0
" 设置为 1 在编辑 markdown 的时候检查预览窗口是否已经打开，否则自动打开预
" 览窗口

let g:mkdp_auto_close = 0
" 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不
" 自动关闭预览窗口

let g:mkdp_refresh_slow = 0
" 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时
" 更新预览

let g:mkdp_command_for_global = 0
" 设置为 1 则所有文件都可以使用 MarkdownPreview 进行预览，默认只有 markdown
" 文件可以使用改命令

let g:mkdp_open_to_the_world = 0
" 设置为 1, 在使用的网络中的其他计算机也能访问预览页面
" 默认只监听本地（127.0.0.1），其他计算机不能访问

"--------------------------------------------------

" Markdown 映射

if expand('%:e') == 'md' || expand('%:e') == 'markdown'
    let g:markdown_fenced_languages = ['html','python','css','javascript','java','bash=sh']
    let g:markdown_minlines = 100 

    " ======= 标题
    imap 2# ##  
    imap 3# ### 
    imap 4# #### 
    imap 5# ##### 
    imap 6# ###### 
    imap <h1 <h1></h1><left><left><left><left><left>
    imap <h2 <h2></h2><left><left><left><left><left>
    imap <h3 <h3></h3><left><left><left><left><left>
    imap <h4 <h4></h4><left><left><left><left><left>
    imap <h5 <h5></h5><left><left><left><left><left>
    imap <h6 <h6></h6><left><left><left><left><left>
    imap 3- ---<CR>

    " ======= 字型
    imap 1x **<left>
    imap 2x ****<left><left>
    imap 3x ******<left><left><left>
    imap 3` ```<CR><up>
    imap ~~ ~~<left>
    " imap 2> >>
    " imap 3> >>>
    imap <u <u></u><C-o>F<
    imap <sub <sub></sub><C-o>F<
    imap <sup <sup></sup><C-o>F<

    " 流程图
    imap =- =>
    imap _+ ->
    imap fchart 3`<CR><C-o>A flowchart<down>st=>start: 开始<CR>op1=>operation: 操作1<CR>sub1=>subroutine: 子程序1<CR>cond1=>condition: 条件1<CR>io1=>inputoutput: 输出1<CR>e=>end: 结束<CR><CR>st->op1->sub1-><CR>cond1(yes)-><CR>cond1(no)-><ESC>9kA

    " ======= 标签
    imap [url []()<left>
    imap [img ![alt ]()<left>
    imap <b> <b></b><C-o>F<
    imap <i <i></i><C-o>F<
    imap <br </br>
    imap <kbd <kbd></kbd><C-o>F<
    imap <em <em></em><C-o>F<

    " ========== 表格
    imap tab2 \|   \|   \|<CR><ESC>O\|---\|---\|<ESC>k^a
    imap tab3 \|   \|   \|   \|<CR><ESC>O\|---\|---\|---\|<ESC>k^a
    imap tab4 \|   \|   \|   \|   \|<CR><ESC>O\|---\|---\|---\|---\|<ESC>k^a

    " ========== 数学公式
    imap $% $$<CR><CR>$$<up>

    " ==========  插入空格
    imap 5kg &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

    " ========== 脚注
    imap ^^ [^]<left>

endif 

"----------------------------------------------------------------

" YCM
" 如果不指定python解释器路径，ycm会自己搜索一个合适的(与编译ycm时使用的python版本匹配)
let g:ycm_server_python_interpreter = 'C:\Users\shi\AppData\Local\Programs\Python\Python39\python.exe'
let g:ycm_confirm_extra_conf = 0
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '✹'
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_semantic_triggers =  {
            \   'c' : ['->', '.','re![_a-zA-z0-9]'],
            \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
            \             're!\[.*\]\s'],
            \   'ocaml' : ['.', '#'],
            \   'cpp,objcpp' : ['->', '.', '::','re![_a-zA-Z0-9]'],
            \   'perl' : ['->'],
            \   'php' : ['->', '::'],
            \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.','('],
            \   'ruby' : ['.', '::'],
            \   'lua' : ['.', ':'],
            \   'erlang' : [':'],
            \ }
nnoremap <leader>u :YcmCompleter GoToDeclaration<cr>
" 已经使用cpp-mode插件提供的转到函数实现的功能
" nnoremap <leader>i :YcmCompleter GoToDefinition<cr>
nnoremap <leader>o :YcmCompleter GoToInclude<cr>
nnoremap <leader>ff :YcmCompleter FixIt<cr>
nmap <F5> :YcmDiags<cr>

set tags=tags;
set autochdir
if (filereadable(".ycm_extra_conf.py"))
	let g:ycm_global_ycm_extra_conf='./.ycm_extra_conf.py'
else
	let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
endif
let g:ycm_confirm_extra_conf = 0
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone
" echodoc
set cmdheight=2
let g:echodoc_enable_at_startup = 1
" Or, you could use vim's popup window feature.
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'popup'
" To use a custom highlight for the popup window,
" change Pmenu to your highlight group
highlight link EchoDocPopup Pmenu

"-----------------------------------------------------------------------------

 " 主题设置
" set background=dark
let g:onedark_termcolors=256
colorscheme evening

" airline
let g:airline_theme="badwolf" " 设置状态栏主题
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" 可视化缩进
let g:indent_guides_enable_on_vim_startup = 0  " 默认关闭
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进

" 可视线
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_concealcursor = 'inc'
 
let g:ycm_semantic_triggers =  {
           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }

"---------------------------------------------------------------

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
packadd! matchit

" 启动netrw 插件
set nocompatible
filetype plugin on

" vimwiki
set nocompatible
filetype plugin on
syntax on
let g:vimwiki_list =[{'path':'~/vimwiki/',
                    \ 'synatx':'markdown',
                    \ 'ext':'.md'}]


" 语法高亮
let g:python_highlight_all = 1  "python"
let g:javascript_plugin_jsdoc = 1 "js"

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

"---------------------------

" 一键编译
map <F2> :call CompileRunGcc()<CR>   
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!gcc % -o %<"
    exec "!%<.exe"
  elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "!%<.exe"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!java %<.class"
  elseif &filetype == 'sh'
    exec "!sh bash %"
  elseif &filetype == 'python'
    silent! exec "!clear"
    exec "!python %"
  elseif &filetype == 'html'
    exec "!chrome %:p"
  elseif &filetype == 'md'
    exec "MarkdownPreview"
  elseif &filetype == 'markdown'
    exec "MarkdownPreview"
  elseif &filetype == 'vimwiki'
    exec "MarkdownPreview"
  endif
endfunc

map <F3> :call CompileBuildrrr()<CR>  
func! CompileBuildrrr()
  exec "w"
  if &filetype == 'vim'
    exec "source C:/User/shi/.vimrc"
  elseif &filetype == 'markdown'
    exec "echo"
  endif
endfunc



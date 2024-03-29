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
" set cursorline           " 高亮显示当前行
set whichwrap+=<,>,h,l   " 设置光标键跨行
set ttimeoutlen=0        " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
" set lines=999
set columns=85
set nowrap               "关闭折行
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
" set nofoldenable         " 禁用折叠代码

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

" gvim/macvim设置
"----------------------------------------------------------------------
" noremap <C-a> <C-a>
" noremap <C-f> <C-f>
set guifontwide=黑体:h16:cGB2312
set guifont=Source\ Code\ Pro\ Medium:h14   " 设置字体
" set guioptions-=m           " 隐藏菜单栏
set guioptions-=T           " 隐藏工具栏
set guioptions-=L           " 隐藏左侧滚动条
set guioptions-=r           " 隐藏右侧滚动条
set guioptions-=b           " 隐藏底部滚动条
set showtabline=0           " 隐藏Tab

"----------------------------------------------------------------------

" MarkdownPreview 配置
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browser = ''
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
" let g:mkdp_markdown_css = ''
" let g:mkdp_highligh_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = ' [$(name)]'

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

"coc
"--------------------------------------------------------------
" coc 扩展包 path='C:/Users/shi/AppData/Local/coc/'
let g:coc_global_extensions = [
            \'coc-json',
            \'coc-vimlsp',
            \'coc-marketplace',
            \'coc-java',
            \'coc-html',
            \'coc-css',
            \'coc-tsserver',
            \'coc-highlight',
            \'coc-eslint',
            \'coc-prettier',
            \'coc-pyls',
            \'coc-flutter-tools',
            \'coc-actions',
            \'coc-clangd',
            \'coc-yank',
            \'coc-syntax',
            \'coc-snippets',
            \'coc-r-lsp',
            \'coc-jsref',
            \'coc-webview',
            \'coc-ci',
            \      ]

" 中文分词移动
nmap <silent> w <Plug>(coc-ci-w)
nmap <silent> b <Plug>(coc-ci-b)

" 使用 Prettier 命令来格式化当前缓冲区
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

" 选中范围 <leader>f 来格式化范围内容
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" set hidden
set updatetime=100
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-cr> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to

" format on enter, <cr> could be remapped by other vim plugin

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> \g <Plug>(coc-diagnostic-prev)
nmap <silent> \G <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
"----------------------------------------------------------------


"----------------------------------------------------------------
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

"repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

 " 主题设置
" set background=dark
let g:onedark_termcolors=256
colorscheme slate

" airline
" let g:airline_experimental = 1
" let g:airline_detect_modified = 1
" let g:airline_detect_paste = 1
" let g:airline_detect_cryt = 1
" let g:airline_detect_spell = 1
let g:airline_theme="badwolf" " 设置状态栏主题
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'

" 可视化缩进
let g:indent_guides_enable_on_vim_startup = 0  " 默认关闭
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进

" 可视线
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_concealcursor = 'inc'

"---------------------------------------------------------------

" matchit插件
set nocompatible
runtime macros/matchit.vim
packadd! matchit

" 启动netrw 插件
set nocompatible

" vimwiki
set nocompatible
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

" Nerdtree
let g:NERDTreeWinSize = 25
let g:NERDTreeShowLineNumbers=1


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
  elseif &filetype == 'r'
    exec "!Rscript %"
    " 判断图片文件是否存在
    " if !exists('%<.pdf')
    "     silent! exec "!python C:/Users/shi/read_exe.py"
    "     exec "!%<.pdf"
    " endif
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!java %<.class"
  elseif &filetype == 'sh'
    exec "!sh bash %"
  elseif &filetype == 'python'
    " silent 悄悄执行一条命令
    silent! exec "!cls"  
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

map <F5> :call CompileBuildrrr()<CR>
func! CompileBuildrrr()
  exec "w"
  if &filetype == 'vim'
    exec "source $HOME/.vimrc"
  elseif &filetype == 'markdown'
    exec "echo"
  endif
endfunc


" csv

" keymap
set keymap=

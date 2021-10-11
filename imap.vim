" Markdown 映射
map <F3> :call Mkre()<CR>   
func Mkre()
    " if expand('%:e') == 'md' || expand('%:e') == 'markdown'
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
        imap 3` ```<CR><up><ESC>A
        imap ~~ ~~<left>
        " imap 2> >>
        " imap 3> >>>
        imap <u> <u></u><C-o>F<
        imap <sub <sub></sub><C-o>F<
        imap <sup <sup></sup><C-o>F<
        imap <code <code></code><C-o>F<

        " 流程图
        imap =- =>
        imap fchart 3`<CR><C-o>A flowchart<down>st=>start: 开始<CR>op1=>operation: 操作1<CR>sub1=>subroutine: 子程序1<CR>cond1=>condition: 条件1<CR>io1=>inputoutput: 输出1<CR>e=>end: 结束<CR><CR>st->op1->sub1-><CR>cond1(yes)-><CR>cond1(no)-><ESC>9kA

        " ======= 标签
        imap [url []()<left>
        imap [img ![alt ]()<left>
        imap <b> <b></b><C-o>F<
        imap <i> <i></i><C-o>F<
        imap <br </br>
        imap <kbd <kbd></kbd><C-o>F<
        imap <em <em></em><C-o>F<

        " ========== 表格
        imap tab2 \|   \|   \|<CR><ESC>O\|---\|---\|<ESC>k^a
        imap tab3 \|   \|   \|   \|<CR><ESC>O\|---\|---\|---\|<ESC>k^a
        imap tab4 \|   \|   \|   \|   \|<CR><ESC>O\|---\|---\|---\|---\|<ESC>k^a

        " ========== 数学公式
        imap $m $$<CR><CR>$$<up>

        " ==========  插入空格
        imap 5kg &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

        " ========== 脚注
        imap ^^ [^]<left>

endfunc 

" if expand('%:e') == 'md' || expand('%:e') == 'markdown'
    " call Mkre()
" endif 

"codeAudo 
func CodeDefult()

    if &filetype == 'html' || &filetype == 'htm'
        imap <!D <!DOCTYPE html> <CR><html><CR><head><CR><TAB><meta charset="UTF-8"><CR><meta name="viewport" content="iwidth=device-width, initial-scale=1.0"><CR><title><C-r>%<C-w><C-w><ESC>f>a<CR><style><ESC>f>a<CR><ESC>f>a<CR><ESC>O<body><CR><ESC>O<script src=""><ESC>o<p>

    elseif &filetype == 'python'
        imap if_ if __name__ == '__main__':<CR>

  endif

endfunc

"auto Mkre()
autocmd FileType md call Mkre()
autocmd Filetype markdown call Mkre()

"auto CodeDefult()
autocmd FileType html call CodeDefult()
autocmd FileType htm call CodeDefult()
autocmd FileType python call CodeDefult()

"Other map
"<leader> map
nmap <leader>t :NERDTree<CR>

" 命令行模式映射
cmap src source ~\config.vim
cmap re-w \v'(([^']\|'\w)+)'
cmap x16 \v#(\x{6}\|\x{3})

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
" 切换是否换行
nnoremap <A-z> :set wrap!<CR>  
" 复制缩进开关
set pastetoggle=<A-q>

" 绑定 %% 为EX模式下输入工作路径 %^ 则输入当前文件名
cnoremap <expr> %^ getcmdtype() == ':' ? expand('%:p') : '%^'
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:p:h') : '%%'

" j 和 k 移动修改为移动到屏幕行,而不是实际行
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

noremap <c-z> <NOP>

imap <A-=> ->
imap <A--> <-

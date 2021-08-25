let g:coc_global_extensions = ['coc-json','coc-vimlsp','coc-marketplace','coc-java','coc-html','coc-css','coc-tsserver','coc-highlight','coc-eslint','coc-prettier','coc-pyright','coc-flutter-tools','coc-actions','coc-clangd','coc-yank','coc-syntax','coc-snippets']
" set hidden
set updatetime=100
set shortmess+=c

if has("patch-8.1.1564")
    set signcolumn = number
else
    set signcolumn = yes
endif

" 设置 tab 和 s-tab 补全
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" 设置 Crtl + space 弹出自动补全
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

noremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()pumvisible() ? coc#_select_confirm(): "\\
            \                             \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"　设置 \g 和 \g 跳转到下一处错误位置
nmap <silent> \g <Plug>(coc-diagnostic-prev)
nmap <silent> \G <Plug>(coc-diagnostic-next)

"GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" K建　查看帮助
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

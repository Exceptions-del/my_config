" 为插件指定目录
filetype off

set rtp+=~/.vim/plugged/
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'chxuan/vim-buffer'
Plug 'vim-airline/vim-airline'         
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/Shougo/echodoc.vim.git'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'git://git.wincent.com/command-t.git'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'vimwiki/vimwiki'
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'https://github.com/mermaid-js/mermaid.git'
Plug 'jiangmiao/auto-pairs'
Plug 'https://github.com/junegunn/vim-slash.git'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'https://github.com/ryanoasis/vim-devicons.git'
Plug 'https://github.com/Shougo/echodoc.vim.git'
Plug 'https://github.com/junegunn/vim-plug.git'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/vim-python/python-syntax.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/alvan/vim-closetag.git'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'https://github.com/gcmt/wildfire.vim.git'
Plug 'https://github.com/lilydjwg/fcitx.vim.git'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/nelstrom/vim-visual-star-search.git'
Plug 'https://github.com/tpope/vim-abolish.git'
Plug 'https://github.com/tpope/vim-markdown.git'
Plug 'https://github.com/movsb/gvim_fullscreen.git'
Plug 'chrisbra/csv.vim'
Plug 'dense-analysis/ale'

" "初始化插件系统
call plug#end()

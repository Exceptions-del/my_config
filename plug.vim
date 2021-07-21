" 为插件指定目录
filetype off

set rtp+=$Home/.vim/plugged/
call plug#begin('$HOME/.vim/plugged')

Plug 'chxuan/vim-buffer'
Plug 'chxuan/prepare-code'
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
Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'https://github.com/junegunn/vim-slash.git'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'https://github.com/ryanoasis/vim-devicons.git'
Plug 'https://github.com/Shougo/echodoc.vim.git'
Plug 'https://github.com/junegunn/vim-plug.git'
Plug 'https://github.com/tpope/vim-repeat.git'

" "初始化插件系统
call plug#end()


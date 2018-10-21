"            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
"                    Version 2, December 2004
"
" Copyright (C) 2018 iosmanthus
" Author: iosmanthus <isakura1024@gmail.com>
"
" Everyone is permitted to copy and distribute verbatim or modified
" copies of this license document, and changing it is allowed as long
" as the name is changed.
"
"            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
"   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
"
"  0. You just DO WHAT THE FUCK YOU WANT TO.

let mapleader = "\<space>"        " Remap mapleader
set nocompatible                  " Use Vim defaults instead of 100% vi compatibility
syntax enable                     " Enable syntax highlight

" ****************************************************************
" Initialize plugin system ( vim-plug )
call plug#begin('~/.vim/plugged')

" Completion:
Plug 'Shougo/deoplete.nvim'
Plug 'sebastianmarkow/deoplete-rust'
Plug 'SirVer/ultisnips'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'autozimu/LanguageClient-neovim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'iosmanthus/vim-snippets'
Plug 'timonv/vim-cargo'
"Plug 'tenfyzhong/CompleteParameter.vim'
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang --racer-completer' }
"Plug 'honza/vim-snippets'

" Languages:
Plug 'rust-lang/rust.vim'
Plug 'iosmanthus/vim-nasm'
Plug 'antoyo/vim-licenses'
Plug 'jpalardy/vim-slime'

" Linter:
Plug 'w0rp/ale'
"Plug 'roel0/ale'

" Building:
Plug 'skywind3000/asyncrun.vim'
Plug 'djmoch/vim-makejob'

" Code Analyzation:
"Plug 'jeaye/color_coded' , { 'do': 'make color_coded -C ../../' }


" Formatting:
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'Chiel92/vim-autoformat'
Plug 'scrooloose/nerdcommenter'

" Navigation:
Plug 'dkprice/vim-easygrep'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'sjl/gundo.vim'
Plug 'mhinz/vim-startify'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'haya14busa/incsearch.vim'
Plug 'vim-scripts/fcitx.vim'

" Outlook:
Plug 'cespare/vim-toml'
Plug 'chriskempson/base16-vim'
Plug 'jszakmeister/vim-togglecursor'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'Valloric/vim-operator-highlight'

call plug#end()


" ****************************************************************
set termguicolors
set timeoutlen=1000 ttimeoutlen=0   " Timeout
set viminfo+=n~/.vim/viminfo        " Viminfo file location
set directory=~/.vim/swap           " Swap file location
set backspace=eol,start,indent      " More powerful backspacing
set history=64                      " Keep 64 lines of command line history set autowrite                       " Auto save
set encoding=utf-8                  " Encoding

set guifont=Source\ Code\ Pro\ Medium\ 13   " Font
set t_md=
set background=dark                         " Dark backgroud

" Navigation:
set pastetoggle=<F2> " Easy to paste
set ruler            " show the cursor position all the time
set cursorline       " Highlight the current line
set cursorcolumn     " Highlight the current column
set showmatch        " Show matching brackets
set showcmd          " Show (partial) command in status line.
set noshowmode       " Disable displaying the mode
set cmdheight=2      " Show more info in cmd line
set laststatus=2     " Always show status bar
set number           " Show number line
set relativenumber   " Show relative number
set tabstop=2        " Let the tab width equal to 2
set shiftwidth=2     " Let the shift width equal to 2
set expandtab        " Expand tab
set mouse=a          " Enable mouse
"set showtabline=0

" Search:
set incsearch  " Incremental search
set hlsearch   " Hifghlight the searched word

" Buffer:
set hidden     " Hide buffers when they are abandoned
set showtabline=0

" Letter:
set smartcase  " detect the upper alpha inteligently
set ignorecase " Do case insensitive matching
set infercase  " Keep the upper header when completes words

" Basic Mapping:
map Y y$
" command line shortcut
map ; :
" Disable <c-c> in insert mode
imap <c-c> <esc>

" ****************************************************************


runtime! ./modules/vim-plug.vim
runtime! ./modules/ultisnips.vim
runtime! ./modules/deoplete.nvim.vim
runtime! ./modules/deoplete-rust.vim
runtime! ./modules/LanguageClient-neovim.vim
runtime! ./modules/nerdtree.vim
runtime! ./modules/vim-startify.vim
runtime! ./modules/vim-autoformat.vim
runtime! ./modules/vim-licenses.vim
runtime! ./modules/ctrlp.vim
runtime! ./modules/vim-ctrlspace.vim
runtime! ./modules/vim-easymotion.vim
runtime! ./modules/vim-easy-align.vim
runtime! ./modules/markdown-preview.vim.vim
runtime! ./modules/vim-airline.vim
runtime! ./modules/vim-airline-themes.vim
runtime! ./modules/colorscheme.vim
runtime! ./modules/delimitMate.vim
runtime! ./modules/rust.vim
runtime! ./modules/vim-cargo.vim
runtime! ./modules/vim-operator-highlight.vim
runtime! ./modules/incsearch.vim
runtime! ./modules/vim-slime.vim
runtime! ./modules/vim-easygrep.vim
runtime! ./modules/ale.vim
"runtime! ./modules/YouCompleteMe.vim
"runtime! ./modules/neosnippet.vim.vim
"runtime! ./modules/CompleteParameter.vim.vim

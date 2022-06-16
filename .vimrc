set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/jiangmiao/auto-pairs'
Plugin 'https://github.com/vim-syntastic/syntastic'
Plugin 'https://github.com/frazrepo/vim-rainbow'
Plugin 'https://github.com/tpope/vim-surround'
Plugin 'https://github.com/psf/black'
Plugin 'https://github.com/Yggdroot/indentLine'
Plugin 'https://github.com/pedrohdz/vim-yaml-folds'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
:set nu
:set expandtab
:set shiftwidth=2
:set tabstop=2
:set list
:set listchars=tab:>>
:set smartindent
:set autoindent
:set shell=bash\ -i

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Use tabs only if editing a .sh file
if &filetype ==# 'sh'
  setlocal noexpandtab
endif

" Turn off auto tab configuration for python files
let g:python_recommended_style=0

" Activate rainbow
let g:rainbow_active = 1

" Configure syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

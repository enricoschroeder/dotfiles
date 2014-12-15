" Execute this after fresh checkout of .vimrc to setup plugins:
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Then in vim ':PluginInstall'

" Set color scheme
set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm
colorscheme solarized 

" Remap leader key
let mapleader = "ö"

" Set ä to open command mode and to function as enter
nnoremap ä :
cnoremap ä <cr>

" Set ö to browse command history when in command mode
cnoremap ö <up>
cnoremap Ö <down>

" VUNDLE
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree.git'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-bufferline'
Plugin 'bling/vim-airline'
call vundle#end()
filetype plugin indent on

" Some default settings...
set ruler nu incsearch hlsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set hidden
set smartindent

" Use case insensitive search, except when using capital letters
set ignorecase smartcase

"Toggle NerdTree with ,-n
nnoremap <Leader>n :NERDTreeToggle<CR>

"Show menu with completions on tab press
set wildchar=<Tab> wildmenu wildmode=full

" session plugin
let g:session_autosave = 'yes' " Without this macvim crashes...

" Set cuda filetype for *.cuh files (cuda header)
autocmd BufNewFile,BufRead *.cuh set ft=cuda

" Tab key cycles through buffers
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

" Easymotion plugin
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_keys = 'asdghklqwertyuiopzxcvbnmfj,'

" Command for closing current buffer while retaining window
map <leader>d :bp<bar>sp<bar>bn<bar>bd<cr>

" Set session options (what to remember when saving/restoring session)
set sessionoptions+=resize,winpos,winsize,blank,buffers,curdir,folds,help,options,tabpages

" Buffer switch options
set switchbuf=useopen,usetab,newtab

" Remap paragraph navigation
nnoremap - }
nnoremap _ {

" Always display status line
set laststatus=2

" Airline plugin
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'

" Bufferline plugin
let g:bufferline_rotate = 1
let g:bufferline_echo = 0
let g:bufferline_fixed_index = 1 

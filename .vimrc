" Execute this after fresh checkout of .vimrc to setup plugins:
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Then in vim ':PluginInstall'

" Set color scheme
set t_Co=256
let g:session_persist_colors=0 "vim-session option"
if has("gui_running")
    set background=dark
    colorscheme solarized
else
endif

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
Plugin 'bling/vim-bufferline'
"Plugin 'fholgado/minibufexpl.vim'
"Plugin 'bling/vim-airline'
Plugin 'itchyny/lightline.vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
call vundle#end()
filetype plugin indent on

" Some default settings...
set ruler nu 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set hidden
set smartindent
set cursorline
set incsearch hlsearch
        
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

" Backspace disables current highlights
nnoremap <backspace> :noh<CR>

" Remap paragraph navigation
nnoremap - }
nnoremap _ {

" Ctrl+some motions keep cursor centered
nnoremap <C-k> kzz
nnoremap <C-j> jzz
nnoremap <C-h> <C-d>zz
nnoremap <C-l> <C-u>zz

" Easymotion plugin
map <Leader> <Plug>(easymotion-prefix)
let g:EasyMotion_keys = 'asdghklqwertyuiopzxcvbnmfj,'

" Command for closing current buffer while retaining window
map <leader>d :bp<bar>sp<bar>bn<bar>bd<cr>

" Set session options (what to remember when saving/restoring session)
set sessionoptions=resize,winpos,winsize,blank,buffers,curdir,folds,help,tabpages

" Buffer switch options
set switchbuf=useopen,usetab,newtab

" Always display status line
set laststatus=2

" Bufferline plugin
"let g:bufferline_rotate = 1
"let g:bufferline_echo = 0
"let g:bufferline_fixed_index = 1

" Lightline plugin
let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ }

" Pandoc plugin
let g:pandoc#modules#disabled = ["folding"]
let g:pandoc#spell#default_langs = ["en_us", "de"]

" ===================================================================================
" ADVANCED STUFF
" ===================================================================================

" Open small split window showing beginning of function
nnoremap <leader>k :10sp <cr> :execute "normal [[" <cr>


execute pathogen#infect()

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
nmap ,n :NERDTreeToggle<CR>

"Show menu with completions on tab press
set wildchar=<Tab> wildmenu wildmode=full

" Sessionman -- Doesn't seem to be working...
set viminfo='100,<500,s10,h,!
autocmd VimEnter * if argc() == 0 | SessionOpenLast
let sessionman_save_on_exit=1

" Set cuda filetype for *.cuh files (cuda header)
autocmd BufNewFile,BufRead *.cuh set ft=cuda

" Tab key cycles through buffers
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

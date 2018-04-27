map <F6> mzhh=G'z<CR>

colorscheme elflord

set background=dark
highlight Cursor ctermbg=Green

set smarttab
set expandtab
set shiftwidth=4
set tabstop=4
set laststatus=2
set t_Co=256

set showcmd
set autoindent
set smartindent

set autoread ruler smartindent
set hid number ignorecase hlsearch
set showmatch noswapfile nobackup
set nowb smarttab showcmd autoindent
set nocompatible
set nowrap

"folding settings
"set foldmethod=indent   "fold based on indent
"set foldnestmax=2      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
"
"inoremap jj <Esc>
"inoremap jk <Esc>
"inoremap kj <Esc>
"inoremap kk <Esc>
"
"" Get better
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

"execute pathogen#infect()
""autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()


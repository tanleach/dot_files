set nocompatible
filetype plugin indent on

" run this: vim -es -u vimrc -i NONE -c "PlugInstall" -c "qa"
" Install Plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" =======================================================
" REMEMBER: ANY CHANGES NEED TO SOURCED IN TO WORK
"  :source ~/.vimrc
"  :PluginInstall
" =======================================================
"
call plug#begin('~/.vim/plugged')

" Go development
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" For TCL error checking I think
Plug 'vim-syntastic/syntastic'

" file browser
Plug 'preservim/nerdtree'

" tags are nice
Plug 'preservim/tagbar'

"pretty folding
Plug 'tmhedberg/SimpylFold'

" Python indents
Plug 'vim-scripts/indentpython.vim'

" Flake 8
Plug 'nvie/vim-flake8'

" Powerline
" Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()


set encoding=utf-8
" autocmd vimenter * ++nested colorscheme gruvbox


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


syntax enable
set background=dark
set t_Co=256

" colorscheme gruvbox

" No backups
set noswapfile
set nobackup
set nowb

set smarttab
set expandtab
set shiftwidth=4
set tabstop=4
set laststatus=2
set cmdheight=2

set backspace=indent,eol,start

set showcmd

set foldmethod=syntax
set autoindent


set nofoldenable
" Beter search
set hid number ignorecase hlsearch
set autoread ruler
set showmatch


" Ugh beeping
set novisualbell
set noerrorbells

" Escape easily
inoremap jj <Esc>
inoremap jk <Esc>
inoremap kk <Esc>
inoremap kj <Esc>


" Get better
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Move between window with control-direction
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Allow w!! to sudo force writing
cmap w!! w !sudo tee % >/dev/null

" I hate the shift key, map all the shit I type to what I mean
if has("user_commands")
        command! -bang -nargs=? -complete=file E e<bang> <args>
        command! -bang -nargs=? -complete=file W w<bang> <args>
        command! -bang -nargs=? -complete=file Wq wq<bang> <args>
        command! -bang -nargs=? -complete=file WQ wq<bang> <args>
        command! -bang Wa wa<bang>
        command! -bang WA wa<bang>
        command! -bang Q q<bang>
        command! -bang QA qa<bang>
        command! -bang Qa qa<bang>
endif


" Leader is the space bar.
nnoremap <SPACE> <Nop>
let mapleader=" "

"Paste mode with leader-p
noremap  <leader>p <esc>:set paste!<cr>i
nnoremap <leader>p :set paste!<cr>

" =====================
" GO STUFF
" =====================

" vim-go shortcuts, only enable in go files
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>l  <Plug>(go-lint)

let g:go_auto_type_info=1
let g:go_updatetime=100
let g:go_doc_popup_window = 1


" =====================
" PYTHON STUFF
" =====================
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" yell about white space
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" =====================

" Tagbar!
nmap <leader>t :TagbarToggle<CR>

" nerdtree!
nnoremap <leader>n :NERDTreeToggle<CR>


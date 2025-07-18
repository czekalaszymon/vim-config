" --- Basic Settings ---
set nocompatible            	    " Use Vim defaults, not Vi
set backspace=indent,eol,start 	    " Backspace behaves intuitively
set hidden                  	    " Switch between buffers without saving
set mouse=a                 	    " Enable mouse support
set clipboard=unnamedplus  	        " Use system clipboard (Linux/macOS only)
set noerrorbells visualbell t_vb=   " Disable annoying beeps

" --- Indentation ---
set tabstop=4                       " A tab is 4 spaces
set shiftwidth=4                    " Indents use 4 spaces
set expandtab                       " Use spaces instead of tabs
set smartindent                     " Auto indenting
set autoindent                      " Keep indent on new lines

" --- Search ---
set ignorecase                      " Case-insensitive search...
set smartcase                       " ... unless you use caps
set incsearch                       " Show search results as you type
set hlsearch                        " Highlight matches

" --- UI Tweaks ---
set scrolloff=5                     " Keep 5 lines visible above/below cursor
set showcmd                         " Show commands in bottom bar
set wildmenu                        " Tab completion menu
set numberwidth=1                   " Minimal line number space (even if numbers off)

" --- File stuff ---
set autoread                        " Reload file if changed outside Vim
set undofile                        " Persistent undo across sessions

" --- Status line ---
set laststatus=2                    " Always show the statusline
set ruler                           " Show line and column

" --- Leader key ---
let mapleader="\<Space>"            " Space is your <Leader> key

" --- Mappings ---
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>

" --- Move between splits ---
nnoremap <Space>h <C-w>h
nnoremap <Space>j <C-w>j
nnoremap <Space>k <C-w>k
nnoremap <Space>l <C-w>l

" --- Create splits ---
nnoremap <Space>s :split<CR>
nnoremap <Space>v :vsplit<CR>

" --- Resize splits ---
nnoremap <Space><Left>  :vertical resize -5<CR>
nnoremap <Space><Right> :vertical resize +5<CR>
nnoremap <Space><Up>    :resize -2<CR>
nnoremap <Space><Down>  :resize +2<CR>

" --- Equalize all splits ---
nnoremap <Space>= <C-w>=

" --- Filetype & plugin detection ---
filetype plugin indent on

syntax off

" --- Filetype-specific indentation ---

" HTML & CSS: 2 spaces, no tabs
autocmd FileType html,css setlocal tabstop=2 shiftwidth=2 expandtab

" C: 8-wide real tabs, no spaces
autocmd FileType c setlocal tabstop=8 shiftwidth=8 noexpandtab

" Rust: 8-wide real tabs, no spaces
autocmd FileType rust setlocal tabstop=8 shiftwidth=8 noexpandtab

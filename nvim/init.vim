call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'townk/vim-autoclose'
Plug 'pangloss/vim-javascript'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lambdalisue/suda.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'aditya-azad/candle-grey'
" Initialize plugin system
call plug#end()

filetype plugin indent on
"set autoindent
"set copyindent      " copy indent from the previous line "

let g:multi_cursor_select_all_word_key = '<C-m>'

" fix color?
set t_Co=256                         " Enable 256 colors
set termguicolors                    " Enable GUI colors for the terminal to get truecolor 

let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'
" " All possible highlighters

 let g:Hexokinase_highlighters = ['virtual'] 


" no line numbers for markdown
autocmd FileType markdown setlocal nonumber 

" splits open at the bottom and right
set splitbelow splitright 

" mouse mode
set mouse=a

" Turn on syntax highlighting
syntax on

" Pick a leader key
let mapleader = ","

" Show line numbers
set number

" Better command-line completion
set lazyredraw
set wildmenu
set wildignorecase
set undofile
set noshowcmd

" Show file stats
set ruler

" disable bell
set noerrorbells

" Encoding
"set encoding=utf-8

" wrap lines
set wrap
set tabstop=4 softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim



" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers

set hidden
" Rendering

set ttyfast

" Status bar

set laststatus=2

" NERDtree 
nmap <C-f> :NERDTreeToggle<Enter>

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬

" Uncomment this to enable by default: set list " To enable by default Or use
" your leader key + l to toggle on/off

map <leader>l :set list!<CR> " Toggle tabs and EOL



" snippets
nnoremap ,html :-1read $HOME/.vim/skeleton.html<CR>3j2f>a



" format JSON
command! Jsonf :execute '%!python -c "import json,sys,collections,re; sys.stdout.write(re.sub(r\"\\\u[0-9a-f]{4}\", lambda m:m.group().decode(\"unicode_escape\").encode(\"utf-8\"),json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), indent=2)))"'



" Color scheme (terminal)

"let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic = 1
colorscheme gruvbox
"set background=dark

hi Normal guibg=NONE ctermbg=NONE

"-----------------------------------
	" coc 
"-----------------------------
source $HOME/.config/nvim/coc.vim
set t_ZH=^[[3m
set t_ZR=^[[23m

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'townk/vim-autoclose'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'rakr/vim-one'
" Initialize plugin system
call plug#end()

filetype plugin indent on
"set autoindent
"set copyindent      " copy indent from the previous line "

let g:multi_cursor_select_all_word_key = '<C-m>'

" fix color?
set t_Co=256                         " Enable 256 colors
set termguicolors                    " Enable GUI colors for the terminal to get truecolor 

" R
 autocmd TermOpen * setlocal nonumber
let R_rconsole_width = 0
let R_rconsole_height = 15

" turn hybrid line numbers on
:set number relativenumber


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

" Markdown 
let R_pdfviewer = "evince"


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
nnoremap ,rmd :-1read $HOME/.vim/skeleton.Rmd<CR>



" format JSON
command! Jsonf :execute '%!python -c "import json,sys,collections,re; sys.stdout.write(re.sub(r\"\\\u[0-9a-f]{4}\", lambda m:m.group().decode(\"unicode_escape\").encode(\"utf-8\"),json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), indent=2)))"'



" Color scheme (terminal)
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


"let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_italic = 1
let g:one_allow_italics = 1
colorscheme gruvbox
set background=dark

hi Normal guibg=NONE ctermbg=NONE

"-----------------------------------
	" coc 
"-----------------------------
source $HOME/.config/nvim/coc.vim
set t_ZH=^[[3m
set t_ZR=^[[23m

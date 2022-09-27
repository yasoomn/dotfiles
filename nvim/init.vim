call plug#begin()
	Plug 'plasticboy/vim-markdown'
	Plug 'lifepillar/vim-gruvbox8'
	Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
	Plug 'junegunn/goyo.vim'
	Plug 'jalvesaq/zotcite'
	Plug 'townk/vim-autoclose'
	Plug 'airblade/vim-gitgutter'
	Plug 'christoomey/vim-system-copy'
	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'wincent/terminus'
	Plug 'rrethy/vim-illuminate'
	Plug 'viklund/bio-vim'
	Plug 'vim-airline/vim-airline'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'yuttie/comfortable-motion.vim'
	Plug 'lambdalisue/suda.vim'
	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
	Plug 'lervag/vimtex'
	Plug 'mhinz/vim-startify'
	Plug 'dense-analysis/ale'


call plug#end()

let g:startify_custom_header=[
\'',
\'███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
\'████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
\'██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
\'██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
\'██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
\'╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
\'                                                  ',
\'',
\'',
\'',
\]


set mouse=a
set encoding=UTF-8
set number
set wildmenu
set wrap
set linebreak
filetype plugin indent on
syntax on
set t_Co=256
let mapleader = ","
let g:python3_host_prog = '/usr/bin/python3'

" source COC config
source /home/yasoo/.config/nvim/coc.vim

" configuration for tab character
set softtabstop=0 noexpandtab
set tabstop=2
set shiftwidth=2
set noexpandtab smarttab

" see tabs as characters

set list
set listchars=tab:>>

" True color if available
let term_program=$TERM_PROGRAM

" Move up/down editor lines
"nnoremap j gj
"nnoremap k gk
"vnoremap j gj
"vnoremap k gk

" Searching
nnoremap / /\v
vnoremap / /\v
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" Hexokinase
let g:Hexokinase_highlighters = ['foreground']
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla'

" highlight 80th column
set cc=80

" highlight current line
set cursorline
" highilight current column
set cursorcolumn

" Markdown


set spelllang=en
autocmd FileType markdown,tex setlocal spell

" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 1

" list indenting
"let g:vim_markdown_new_list_item_indent = 2

" LimeLight
let g:limelight_conceal_guifg = 'Gray'

" Scrolling

let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>
"
let g:comfortable_motion_friction = 160.0
let g:comfortable_motion_air_drag = 3.0
"
"nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
"nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
"
" Suda.vim
let g:suda_smart_edit = 1

"" NerdTree

nnoremap <leader>n :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Edit vim configuration file
nnoremap <Leader>dote :tabnew $MYVIMRC<CR>
" " Reload vimr configuration file
nnoremap <Leader>dotr :source $MYVIMRC<CR>

"Vimtex

" Zotcite
"let $ZBannedWords = 'a an the some from on in to of do'
"let $ZCitationTemplate = '{author}_{title}_{Year}'
let zotcite_conceallevel = 0
let zotcite_hl = 0

"Airline
let g:airline#extensions#tabline#enabled = 1

"Neovide ->
set guifont="Yuku Code"
let g:neovide_transparency=1
"let g:neovide_floating_blur_amount_x = 20.0
"let g:neovide_floating_blur_amount_y = 20.0
let g:neovide_remember_window_size = v:true
let g:neovide_cursor_antialiasing=v:true
let g:neovide_cursor_vfx_mode = "railgun"
let g:neovide_scroll_animation_length = 1
let g:neovide_cursor_trail_length=0.1
let g:neovide_cursor_animation_length=0.05

let g:gruvbox_italic = 1
let g:one_allow_italics = 1
set background=dark
colorscheme gruvbox8


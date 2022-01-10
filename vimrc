syntax on	" 打开高亮
set number	" 显示行号
set relativenumber	" 自定义行号
set cursorline	 
set wrap	 
set showcmd	 
" 搜索相关
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

set nocompatible
filetype on
filetype indent on
filetype plugin on 
filetype plugin indent on

set mouse=a	" 很吊，可以使用鼠标！
set encoding=utf-8
let &t_ut=''
set scrolloff=5


" 记忆光标位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
" 向右分屏
map sl :set splitright<CR>:vsplit<CR>	
map <C-h> <C-w>h
map <C-l> <C-w>l

" ===
" === NERDTree
" ===
map ff :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" ===
" === Goyo
" ===
map gy :Goyo<CR>



" 插件
call plug#begin()

Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/goyo.vim' " distraction free writing mode

call plug#end()

set laststatus=2    " 始终显示状态栏

" Airline
let g:airline#extensions#tabline#enabled=1    " 开启 tab 栏
let g:airline_theme='simple'	"  Airline 的样式。



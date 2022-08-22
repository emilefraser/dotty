"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author:
"       Emile Fraser - @emilefraser
"
" File:
"		config.vim
"
" Use:
"		Config settings for vim
"
" Sections:
"    -> General
"    -> Movement
"    -> Style
"    -> Format
"    -> Functionality
"    -> Ignores
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let $LANG='en'
filetype plugin on
set fileformats=unix,dos,mac
set encoding=UTF-8
set history=500
set hidden
set langmenu=en
set laststatus=2
set lazyredraw
set ignorecase
set shell=bash
set tm=500
set so=7
set mat=2
set omnifunc=syntaxcomplete#Complete
set laststatus=2
set noshowmode
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Movement
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype indent on
set autoindent
set expandtab
set mouse=a
set tabstop=4
set smartindent
set smarttab


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Style
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set background=dark
set guicursor+=n:hor20-Cursor/lCursor
set cmdheight=1
set number
set ruler
set virtualedit=block

syntax enable
try
    colorscheme nord 
catch
endtry

if !has('gui_running')
  set t_Co=256
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Format
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set wrap
set foldcolumn=1
set foldmethod=indent
set formatoptions+=mMj
set linebreak
set smartcase
set wrap "Wrap lines
set whichwrap+=<,>,h,l
set whichwrap=b,s,[,],<,>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Functionality
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set spell
set backspace=eol,start,indent
set hlsearch
set incsearch
set nobackup
set noerrorbells
set noshowcmd
set nowb
set nowritebackup
set novisualbell
set wildmenu
set noswapfile
set notitle
set showmatch
set t_vb=
set magic


" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  #set stal=2
  #set tabline=%!CustomizedTabLine()
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ignores
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win13") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

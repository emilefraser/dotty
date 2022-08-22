set autoindent          " always set autoindenting on set autowrite
                        " auto saves changes when quitting and swiching buffer
set background=dark
" set clipboard=unnamed Doesn't work when compiled with --client-server (X11)
set encoding=utf-8
set expandtab
set foldmethod=marker   " use typed folding
set history=500
set hlsearch            " highlight searches
set ignorecase          " ignore case when searching
set incsearch           " do incremental searching
set keywordprg=perldoc\ -f
set listchars=eol:¶,tab:>-,trail:- " Show EOL, Tabs, and Trailing Spaces
set ls=2                " always show status line
set modeline            " last lines in document sets vim mode
set modelines=3         " number lines checked for modelines
set nobackup            " do not keep a backup file
set nocindent
set nocompatible        " We're running Vim, not Vi!
set nostartofline       " don't jump to first character when paging
set novisualbell        " turn off visual bell
set nowrap              " don't wrap lines
set number
set ruler               " show the cursor position all the time
set scrolloff=10        " keep 10 lines when scrolling
set shiftwidth=2        " numbers of spaces to (auto)indent
set shortmess=atI       " Abbreviate messages
set showcmd             " display incomplete commands
set sm                  " show matching braces, somewhat annoying...
set smartindent         " smart indent
set t_Co=256            " enable 256-color support http://www.alfredrossi.com/?p=49
set tabpagemax=100      " 100 max tabs open
set tabstop=2           " numbers of spaces of tab character
set textwidth=110
set title               " show title in console title bar
set ttyfast             " smoother changes
set ttymouse=xterm2
set visualbell t_vb=    " turn off error beep/flash
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files

" General Customization
let mapleader = ","     " remap leader character
imap jj <Esc>           " faster way of escaping insert mode
map <Leader>lt :setlocal list!<CR>
let g:vim_json_syntax_conceal = 0

" Ruby Stuff
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
map <F5> :!ruby %<CR>   " execute ruby file

" Pathogen Plugin
filetype off " Pathogen needs to run before plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'

" Neocomplete Plugin
let g:neocomplete#enable_at_startup = 0
" UltiSnips Plugin
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" Vim-Go Plugin
set autowrite
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1

" NERDTree Plugin
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeHighlightCursorline = 1
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\~$', '.svn$', '.DS_Store', '.sass-cache']
nmap <leader><leader>d :NERDTreeToggle<CR>

" Powerline Plugin (pip installed source)
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Gist Plugin
let g:gist_open_browser_after_post = 1

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

colorscheme jellybeans
syntax on

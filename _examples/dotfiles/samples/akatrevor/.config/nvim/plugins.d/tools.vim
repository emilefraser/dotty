" Plug 'tpope/vim-commentary'
" Plug 'scrooloose/nerdcommenter'
Plug 'tomtom/tcomment_vim'

" Gundo: Undo browser
Plug 'sjl/gundo.vim'

" Fuzzy File Finder:

"Plug $GOPATH.'/src/github.com/junegunn/fzf'
Plug 'junegunn/fzf' | Plug 'junegunn/fzf.vim' | Plug 'lvht/fzf-mru' | Plug 'dominickng/fzf-session.vim'

" set max lenght for the mru file list
let g:fzf_mru_file_list_size = 10 " default value
" set path pattens that should be ignored
let g:fzf_mru_ignore_patterns = '\.pyc\|fugitive\|\.git/\|\_^/tmp/' " default value

Plug 'chrisbra/Recover.vim'

" Plug 'lambdalisue/lista.nvim', { 'do': ':UpdateRemotePlugins' }

" Plug 'brooth/far.vim'

Plug 'embear/vim-localvimrc'

" Plug 'neomake/neomake', { 'do': ':UpdateRemotePlugins' }
" Plug 'coddingtonbear/neomake-platformio', { 'do': ':UpdateRemotePlugins' }

Plug 'thinca/vim-prettyprint'

Plug 'gyim/vim-boxdraw'

Plug 'floobits/floobits-neovim'

" Plug 'powerman/vim-plugin-AnsiEsc'

Plug 'direnv/direnv.vim'


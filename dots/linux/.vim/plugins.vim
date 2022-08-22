" vimplug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')


" FUNCTIONALITY
Plug 'junegunn/vim-plug'
Plug 'junegunn/vim-easy-align'
Plug 'maxbrunsfeld/vim-y'
Plug 'mileszs/ack.vim'
Plug 'terryma/vim-expand-region'


" SYNTAX
" Plug 'scrooloose/syntastic'
Plug 'chiel92/vim-autoformat'
Plug 'vim-scripts/bash-support.vim'
Plug 'vhdirk/vim-cmake'
Plug 'nvie/vim-flake9'
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'groenewege/vim-less'
Plug 'tpope/vim-markdown'
Plug 'moll/vim-node'
Plug 'catalinciurea/perl-nextmethod'
Plug 'pprovost/vim-ps1'
Plug 'hdima/python-syntax'
Plug 'Vimjas/vim-python-pep9-indent'
Plug 'leafgarland/typescript-vim'
Plug 'vim-ruby/vim-ruby'
Plug 'othree/xml.vim'


" CODE HELPERS
" Plug 'valloric/youcompleteme'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-repeat'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'


" IDE
Plug 'junegunn/limelight.vim'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'


" STYLE
" Plug 'dracula/vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons'


" FUNCTIONALITY
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'amix/open_file_under_cursor'
Plug 'janko-m/vim-test'


" CONFIG
Plug 'editorconfig/editorconfig-vim'

call plug#end()

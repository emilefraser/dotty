"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author:
"       Emile Fraser - @emilefraser
"
" File:
"		plugins.vim
"
" Use:
"		Plugins used for vim
"
" Sections:
"    -> Autoload
"    -> Functionality
"    -> Syntax
"    -> Code Helpers
"    -> Ide
"    -> Style
" 	 -> File
" 	 -> Config

""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autoload
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimplug
" if empty(glob('$VIM/autoload/plug.vim')) 

let plugPath=expand('$VIM/autoload/plug.vim')
if !filereadable(plugPath)
	echo "Installing Plug to " . plugPath
	silent !curl -fLo $VIM/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
	autocmd VimEnter * PlugInstall --sync 
	source $VIM/autoload/plug.vim
endif
""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('$HOME/vimfiles/plugged')




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functionality
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'junegunn/vim-plug'
Plug 'junegunn/vim-easy-align'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'mileszs/ack.vim'
Plug 'terryma/vim-expand-region'

""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'scrooloose/syntastic'
Plug 'chiel92/vim-autoformat'
Plug 'vim-scripts/bash-support.vim'
Plug 'vhdirk/vim-cmake'
Plug 'nvie/vim-flake8'
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'groenewege/vim-less'
Plug 'tpope/vim-markdown'
Plug 'moll/vim-node'
Plug 'catalinciurea/perl-nextmethod'
Plug 'pprovost/vim-ps1'
Plug 'hdima/python-syntax'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'leafgarland/typescript-vim'
Plug 'vim-ruby/vim-ruby'
Plug 'othree/xml.vim'

""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code Helpers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'valloric/youcompleteme'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-repeat'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'

""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ide
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'junegunn/limelight.vim'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'

""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Style
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'dracula/vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ryanoasis/vim-devicons'

""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'janko-m/vim-test'

""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'editorconfig/editorconfig-vim'

""""""""""""""""""""""""""""""""""""""""""""""""

call plug#end()

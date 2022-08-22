"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author:
"       Emile Fraser - @emilefraser
"
" File:
"		.vimrc
"
" Use:
"		Main vim config file that sources config atoms
"
" Sections:
"    -> Sourcing
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SOURCING

" Vim with all enhancements
source ~/.vim/custom/functions.vim
source ~/.vim/custom/config.vim
source ~/.vim/custom/plugins.vim
source ~/.vim/custom/plugin-config.vim
source ~/.vim/custom/keymap.vim
source ~/.vim/custom/filetype.vim

if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r ~/.vim/templates/sh.sh
  augroup END
endif


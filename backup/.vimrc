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

" Gets the user name of currently logged in user 
"let user = $(whoami)
:set verbose=9
:set verbosefile=/home/pyromaniac/vimlog.txt

" Vim with all enhancements
source /home/pyromaniac/.vim/custom/functions.vim
source /home/pyromaniac/.vim/custom/config.vim
source /home/pyromaniac/.vim/custom/plugins.vim
source /home/pyromaniac/.vim/custom/plugin-config.vim
source /home/pyromaniac/.vim/custom/keymap.vim
source /home/pyromaniac/.vim/custom/filetype.vim


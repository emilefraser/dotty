" NERDtree
autocmd StdinReadPre * let s:std_in=
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists(s:std_in) | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

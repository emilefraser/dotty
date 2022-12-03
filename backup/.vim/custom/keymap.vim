""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author:
"       Emile Fraser - @emilefraser
"
" File:
"       keymaps.vim
"
" Description:
"       Contains all the keymappings for vim
"
" Sections:
"    -> General
"    -> Visual Mode Related
"    -> Moving around
"    -> Moving things around
"    -> Tabs, Windows, Buffers
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Functionality
"    -> Misc
"    -> Extensions
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" With map leader possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

nnoremap <F2> :w<CR>
nnoremap <F3> :q!<CR>
nnoremap <F4> :wq<CR>
nnoremap <F5> :!./%<CR>
nnoremap <F6> :!!<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Normal Mode
nnoremap <A-Up> gg
nnoremap <A-Down> G
nnoremap <A-Right> $
nnoremap <A-Left> 0
"nnoremap <A-Left> b
"nnoremap <A-Right> w

" Insert Mode
inoremap <A-Up> gg
inoremap <A-Down> G
inoremap <A-Right> $
inoremap <A-Left> 0
inoremap <A-j> <ESC>:m .+1<CR>==gi
inoremap <A-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <A-Up> gg
vnoremap <A-Down> G
vnoremap <A-Right> $
vnoremap <A-Left> 0
vnoremap <A-j> <ESC>:m .+1<CR>==gi
vnoremap <A-k> <ESC>:m .-2<CR>==gi


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving things around
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Move lines up or down
" Normal mode
nnoremap <S-Down> :move +1<CR>
nnoremap <S-Up> :move -2<CR>

" Insert mode
inoremap <S-Up> :move +1<CR>
inoremap <S-Down> :move -2<CR>

" Visual Mode
vnoremap <S-Up> :move +1<CR>
vnoremap <S-Down> :move -2<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tabs, Windows and Buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Smart way to move betwen windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Let 'tl' toggle between this and the last accessed tab
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>

" Opens a new tab with the current buffer's path
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>


" Remap VIM 0 to first non-blank character
map 0 ^


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Functionality
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Spelling
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Extensions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable NERD Tree 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>



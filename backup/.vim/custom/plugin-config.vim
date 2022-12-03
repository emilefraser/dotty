"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author:
"       Emile Fraser - @emilefraser
"
" File:
"		plugin-config.vim
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


""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'

map <leader>o :BufExplorer<cr>

""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>

""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
let g:yankstack_yank_keys = ['y', 'd']
nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-n> <Plug>yankstack_substitute_newer_paste

""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

" Quickly find and open a file in the current working directory
let g:ctrlp_map = '<C-f>'
map <leader>j :CtrlP<cr>

" Quickly find and open a buffer
map <leader>b :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <C-j> <C-r>=snipMate#TriggerSnippet()<cr>
snor <C-j> <esc>i<right><C-r>=snipMate#TriggerSnippet()<cr>
let g:snipMate = { 'snippet_version' : 1 }

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-s>'
let g:multi_cursor_select_all_word_key = '<A-s>'
let g:multi_cursor_start_key           = 'g<C-s>'
let g:multi_cursor_select_all_key      = 'g<A-s>'
let g:multi_cursor_next_key            = '<C-s>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" itchyny/lightline.vim {{{
source ~/.vim/colorscheme/nord_subtle.vim

let g:lightline = {
\   'colorscheme': 'nord',
\   'active': {
\    'left' :[[ 'mode', 'paste' ],
\             [ 'readonly', 'filename', 'modified' ]],
\    'right':[[ 'filetype', 'percent', 'lineinfo' ], [ 'cocstatus' ]]
\   },
\   'tabline': {
\     'left': [['explorer_pad'], ['buffers']],
\     'right': [['gitbranch', 'smarttabs']]
\   },
\   'separator': {
\     'left': '', 'right': ''
\   },
\   'subseparator': {
\     'left': '', 'right': ''
\   },
\   'component_raw': {
\     'buffers': 1
\   },
\   'component_function': {
\     'explorer_pad': 'lightline#explorer_pad#left_pad',
\     'percent': 'LightlinePercent',
\     'lineinfo': 'LightlineLineinfo',
\     'filename': 'LightlineFilename',
\     'fullname': 'LightlineFullname',
\     'mode': 'LightlineMode',
\     'gitbranch': 'LightlineGitbranch',
\     'readonly': 'LightlineReadonly',
\     'modified': 'LightlineModified',
\     'filetype': 'LightlineFiletype',
\     'cocstatus': 'LightlineCoc',
\   },
\   'component_expand': {
\     'buffers': 'lightline#bufferline#buffers',
\     'smarttabs': 'SmartTabsIndicator',
\     'trailing': 'lightline#trailing_whitespace#component'
\   },
\   'component_type': {
\     'buffers': 'tabsel',
\     'trailing': 'warning'
\   }
\}

function! s:trim(maxlen, str) abort
    let trimed = len(a:str) > a:maxlen ? a:str[0:a:maxlen] . '..' : a:str
    return trimed
endfunction

function! LightlineCoc() abort
    if winwidth(0) < 60
        return ''
    endif

    return ''
   " return coc#status()
endfunction

function! LightlinePercent() abort
    if winwidth(0) < 60
        return ''
    endif

    let l:percent = line('.') * 100 / line('$') . '%'
    return printf('%-4s', l:percent)
endfunction

function! LightlineLineinfo() abort
    if winwidth(0) < 86
        return ''
    endif

    let l:current_line = printf('%-3s', line('.'))
    let l:max_line = printf('%-3s', line('$'))
    let l:lineinfo = ' ' . l:current_line . '/' . l:max_line
    return l:lineinfo
endfunction

function! LightlineFilename() abort
    let l:prefix = expand('%:p') =~? "fugitive://" ? '(fugitive) ' : ''
    let l:maxlen = winwidth(0) - winwidth(0) / 2
    let l:relative = expand('%:.')
    let l:tail = expand('%:t')
    let l:noname = 'No Name'

    if winwidth(0) < 50
            return ''
    endif

    if winwidth(0) < 86
        return l:tail ==# '' ? l:noname : l:prefix . s:trim(l:maxlen, l:tail)
    endif

    return l:relative ==# '' ? l:noname : l:prefix . s:trim(l:maxlen, l:relative)
endfunction

function! LightlineFullname() abort
    let l:relative = expand('%')

    return l:relative
endfunction

function! LightlineModified() abort
    return &modified ? '●' : ''
endfunction

function! LightlineMode() abort
    let ftmap = {
                \ 'coc-explorer': 'EXPLORER',
                \ 'fugitive': 'FUGITIVE',
                \ 'vista': 'OUTLINE'
                \ }
    return get(ftmap, &filetype, lightline#mode())
endfunction

function! LightlineReadonly() abort
    let ftmap = {
                \ 'coc-explorer': '',
                \ 'fugitive': '',
                \ 'vista': ''
                \ }
    let l:char = get(ftmap, &filetype, '')
    return &readonly ? l:char : ''
endfunction



function! LightlineGitbranch() abort
      "if exists('*fugitive#head')
       if exists('*FugitiveHead()')
        let maxlen = 20
        "let branch = fugitive#head()
        let branch = FugitiveHead()
        return branch !=# '' ? ' '. s:trim(maxlen, branch) : ''
    endif
    return FugitiveHead()
endfunction

function! LightlineFiletype() abort
    let l:icon = WebDevIconsGetFileTypeSymbol()
    return winwidth(0) > 86 ? (strlen(&filetype) ? &filetype . ' ' . l:icon : l:icon) : ''
endfunction

function! String2()
    return 'BUFFERS'
endfunction

function! SmartTabsIndicator() abort
    let tabs = lightline#tab#tabnum(tabpagenr())
    let tab_total = tabpagenr('$')
    return tabpagenr('$') > 1 ? ('TABS ' . tabs . '/' . tab_total) : ''
endfunction

" autoreload
command! LightlineReload call LightlineReload()

function! LightlineReload() abort
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfunction

let g:lightline#trailing_whitespace#indicator = ''
" }}}

"let g:lightline = {
"	  \ 'colorscheme': 'nord',
"      \ 'active': {
"      \   'left': [[ 'mode', 'paste' ],
"      \            [ 'readonly', 'filename', 'modified' ]],
"      \   'right': [[ 'filetype', 'percent', 'lineinfo' ]]
"      \ },
"      \ 'component_function': {
"      \   'filename': 'LightlineFilename',
"      \ },
""      \ }

"function! LightlineFilename()
"  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
"  let modified = &modified ? ' +' : ''
"  return filename . modified
"endfunction

" bufferline
set showtabline=2
let g:lightline#bufferline#unnamed = 'No Name'
let g:lightline#bufferline#filename_modifier= ':.'
let g:lightline#bufferline#more_buffers = '...'
let g:lightline#bufferline#modified = ' ●'
let g:lightline#bufferline#read_only = ' '
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#show_number = 0
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#unicode_symbols = 1
let g:lightline#bufferline#clickable = 1




"let g:lightline = {
"     \ 'colorscheme': 'wombat',
"     \ 'active': {
"     \   'left': [ ['mode', 'paste'],
"     \             ['fugitive', 'readonly', 'filename', 'modified'] ],
"     \   'right': [ [ 'lineinfo' ], ['percent'] ]
"     \ },
"     \ 'component': {
"     \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
"     \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
"     \   'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}'
"     \ },
"     \ 'component_visible_condition': {
"     \   'readonly': '(&filetype!="help"&& &readonly)',
"     \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
"     \   'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
"     \ },
"     \ 'separator': { 'left': ' ', 'right': ' ' },
"     \ 'subseparator': { 'left': ' ', 'right': ' ' },
"     \ }


"let g:lightline = {
"     \ 'colorscheme': 'wombat',
"     \ 'active': {
"     \   'left': [ [ 'mode', 'paste' ],
"     \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ]
"     \ },
"     \ 'component': {
"     \   'helloworld': 'Hello, world!'
"     \ },
"     \ }
	  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale (syntax checker and linter)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\   'go': ['go', 'golint', 'errcheck']
\}

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EditorConfig (project-specific EditorConfig rule)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EditorConfig_exclude_patterns = ['fugitive://.*']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copy the link to the line of a Git repository to the clipboard
nnoremap <leader>v :.GBrowse!<CR>
xnoremap <leader>v :'<'>GBrowse!<CR>

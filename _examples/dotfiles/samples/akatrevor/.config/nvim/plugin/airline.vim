" Airline:

let g:airline#util#async = 1

let g:airline_powerline_fonts = 1

" enable iminsert detection
let g:airline_detect_iminsert = 1

let g:airline_detect_spell = 1
let g:airline_detect_crypt = 1
let g:airline_detect_iminsert = 1
let g:airline_detect_paste = 1

let airline#extensions#default#section_use_groupitems = 1

" Patch airline theme before apply
"let g:airline_theme_patch_func = 'AirlineThemePatch'
"function! AirlineThemePatch(palette)
"  if g:airline_theme == 'badwolf'
"    for colors in values(a:palette.inactive)
"      let colors[3] = 245
"    endfor
"  endif
"endfunction

"" short mode
"let g:airline_mode_map = {
"    \ '__' : '-',
"    \ 'n'  : 'N',
"    \ 'i'  : 'I',
"    \ 'R'  : 'R',
"    \ 'c'  : 'C',
"    \ 'v'  : 'V',
"    \ 'V'  : 'V',
"    \ '' : 'V',
"    \ 's'  : 'S',
"    \ 'S'  : 'S',
"    \ '' : 'S',
"    \ }


" lc short mode
let g:airline_mode_map = {
      \ '__' : '------',
      \ 'n'  : 'norm',
      \ 'i'  : 'ins',
      \ 'R'  : 'repl',
      \ 'v'  : 'vis',
      \ 'V'  : 'v-line',
      \ 'c'  : 'cmd',
      \ '' : 'v-block',
      \ 's'  : 'select',
      \ 'S'  : 's-line',
      \ '' : 's-block',
      \ 't'  : 'term',
      \ }

"" lc mode
"let g:airline_mode_map = {
"      \ '__' : '------',
"      \ 'n'  : 'norm',
"      \ 'i'  : 'ins',
"      \ 'R'  : 'repl',
"      \ 'v'  : 'vis',
"      \ 'V'  : 'v-line',
"      \ 'c'  : 'cmd',
"      \ '' : 'v-block',
"      \ 's'  : 'select',
"      \ 'S'  : 's-line',
"      \ '' : 's-block',
"      \ 't'  : 'term',
"      \ }

"let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
"let g:airline#extensions#eclim#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
"let g:airline#extensions#capslock#enabled = 1
let g:airline#extensions#ycm#enabled = 1

if exists('g:loaded_promptline')
  let g:airline#extensions#promptline#enabled = 1
endif

"" enable/disable fugitive/lawrencium integration >
let g:airline#extensions#branch#enabled = 1

let g:airline#extensions#default#section_use_groupitems = 1

"" change the text for when no branch is detected >
"let g:airline#extensions#branch#empty_message = ''
"" define the order in which the branches of different vcs systems will be
"" displayed on the statusline (currently only for fugitive and lawrencium) >
"let g:airline#extensions#branch#vcs_priority = ["git", "mercurial"]
"" use vcscommand.vim if available >
"let g:airline#extensions#branch#use_vcscommand = 0
"" truncate long branch names to a fixed length >
"let g:airline#extensions#branch#displayed_head_limit = 10

" default value leaves the name unmodifed
"let g:airline#extensions#branch#format = 0
" to only show the tail, e.g. a branch 'feature/foo' becomes 'foo', use
"let g:airline#extensions#branch#format = 1
" to truncate all path sections but the last one, e.g. a branch
" 'foo/bar/baz' becomes 'f/b/baz', use
let g:airline#extensions#branch#format = 2

"" if a string is provided, it should be the name of a function that
"" takes a string and returns the desired value
"let g:airline#extensions#branch#format = 'CustomBranchName'
"function! CustomBranchName(name)
"  return '[' . a:name . ']'
"endfunction

" Optional extensions
"let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#exclude_preview = 1

let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
"let g:airline#extensions#tabline#show_tabs = 0
"let g:airline#extensions#tabline#show_tab_nr = 1

"let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)
"let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number

let g:airline#extensions#tabline#buffers_label = 'bufs'
let g:airline#extensions#tabline#tabs_label = 'tabs'

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

"let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline#extensions#tabline#show_splits = 1

" * configure the formatting of filenames (see |filename-modifiers|). >
let g:airline#extensions#tabline#fnamemod = ':p:.'
let g:airline#extensions#tabline#show_close_button = 0

""
"" Ctrl-Space
""
let g:CtrlSpaceStatuslineFunction = 'airline#extensions#ctrlspace#statusline()'

""
"" tmuxline
""
"let g:airline#extensions#tmuxline#snapshot_file = expand('~/.tmux/themes/airline-snapshot.conf')

"let airline#extensions#tmuxline#color_template = 'normal' (default)
"let airline#extensions#tmuxline#color_template = 'insert'
"let airline#extensions#tmuxline#color_template = 'visual'
"let airline#extensions#tmuxline#color_template = 'replace'

" TODO Are these automatically enabled or not?
"let g:airline#extensions#hunks#non_zero_only = 1
"let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']

"let g:airline#extensions#ycm#error_symbol = 'E:'
"let g:airline#extensions#ycm#warning_symbol = 'W:'

"let g:airline#extensions#promptline#snapshot_file = expand('~/.zsh/themes/airline-snapshot.sh')

"let airline#extensions#promptline#color_template = 'normal'  " (default)
"let airline#extensions#promptline#color_template = 'insert'
"let airline#extensions#promptline#color_template = 'visual'
"let airline#extensions#promptline#color_template = 'replace'



" available slices:
"
" promptline#slices#cwd() - current dir, truncated to 3 dirs. To configure: promptline#slices#cwd({ 'dir_limit': 4 })
" promptline#slices#vcs_branch() - branch name only. By default, only git branch is enabled. Use promptline#slices#vcs_branch({ 'hg': 1, 'svn': 1, 'fossil': 1}) to enable check for svn, mercurial and fossil branches. Note that always checking if inside a branch slows down the prompt
" promptline#slices#last_exit_code() - display exit code of last command if not zero
" promptline#slices#jobs() - display number of shell jobs if more than zero
" promptline#slices#battery() - display battery percentage (on OSX and linux) only if below 10%. Configure the threshold with promptline#slices#battery({ 'threshold': 25 })
" promptline#slices#host() - current hostname.  To hide the hostname unless connected via SSH, use promptline#slices#host({ 'only_if_ssh': 1 })
" promptline#slices#user()
" promptline#slices#python_virtualenv() - display which virtual env is active (empty is none)
" promptline#slices#git_status() - count of commits ahead/behind upstream, count of modified/added/unmerged files, symbol for clean branch and symbol for existing untraced files
" promptline#slices#conda_env() - display which conda env is active (empty is none)
"
" any command can be used in a slice, for example to print the output of whoami in section 'b':
"       \'b' : [ '$(whoami)'],
"
" more than one slice can be placed in a section, e.g. print both host and user in section 'a':
"       \'a': [ promptline#slices#host(), promptline#slices#user() ],

"" defaultish: sections (a, b, c, x, y, z, warn) are optional
"let g:promptline_preset = {
"        \'a' : [ promptline#slices#host({'only_if_ssh': 1}) ],
"        \'b' : [ promptline#slices#user() ],
"        \'c' : [ promptline#slices#cwd() ],
"        \'y' : [ promptline#slices#vcs_branch() ],
"        \'warn' : [ promptline#slices#last_exit_code() ]}

" sections (a, b, c, x, y, z, warn) are optional
let g:promptline_preset = {
  \ 'a' : [ promptline#slices#host({'only_if_ssh': 1}) ],
  \ 'b' : [ promptline#slices#user() ],
  \ 'c' : [ promptline#slices#cwd() ],
  \ 'x' : [
    \ promptline#slices#git_status(),
    \ ],
  \ 'y' : [
    \ promptline#slices#vcs_branch(),
    \ ],
  \ 'z' : [ promptline#slices#python_virtualenv() ],
  \ 'warn' : [
    \ promptline#slices#last_exit_code(),
    \ promptline#slices#jobs(),
    \ promptline#slices#battery({'threshold': 25}),
    \ ],
  \ }

"  "\'options': {
"  "  \'left_sections' : [ 'a', 'b', 'c', 'd', 'e' ],
"  "  \'right_sections' : [ 'w', 'x', 'y', 'z', 'warn' ],
"  "  \'left_only_sections' : [ 'b', 'a', 'c' ]
"  "  \}
"  "\}
"    "\'$(vi_mode_prompt_info)'


"  enable/disable usage of powerline symbols for separators (default on) >
let g:promptline_powerline_symbols = 1

let s:simple_symbols = {
    \ 'left'           : '',
    \ 'right'          : '',
    \ 'left_alt'       : '|',
    \ 'right_alt'      : '|',
    \ 'dir_sep'        : ' / ',
    \ 'truncation'     : '...',
    \ 'vcs_branch'     : '',
    \ 'battery'        : '',
    \ 'space'          : ' '}

let g:powerline_symbols = extend(copy(s:simple_symbols), {
    \ 'left'           : '',
    \ 'right'          : '',
    \ 'left_alt'       : '',
    \ 'right_alt'      : '',
    \ 'dir_sep'        : '  ',
    \ 'truncation'     : '⋯',
    \ 'vcs_branch'     : ' ',
    \ 'battery'        : '',
    \ })

    "\ 'dir_sep'    : '/',
    "\ 'dir_sep'    : '',
    "\ 'truncation' : ' ',

"                 
"
" 
" 
" 
"    o
" 
" 
" 
" 
"  
"                                      
"                       
"             
"         
" 
" 
"
" 
"
" 
"                                     "       
"       
" 
"    
"  
"     
" 
" 
" 
" 
" 
"           
"    
" 
" 
" 
" 
" 
" 
" 
" 


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif


""
"" unicode symbols
""

"let g:airline_left_sep = '»'
"let g:airline_right_sep = '«'
"let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.notexists = '∄'
"let g:airline_symbols.whitespace = 'Ξ'

""
"" powerline symbols
""

"let g:airline_left_sep = '▶'
"let g:airline_left_sep = ''
"let g:airline_left_sep = ''

"let g:airline_right_sep = '◀'
"let g:airline_right_sep = ''
"let g:airline_right_sep = ''

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
"let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.crypt = ''

""" old vim-powerline symbols
""let g:airline_left_sep = '⮀'
""let g:airline_left_alt_sep = '⮁'
""let g:airline_right_sep = '⮂'
""let g:airline_right_alt_sep = '⮃'
""let g:airline_symbols.branch = '⭠'
""let g:airline_symbols.readonly = '⭤'
""let g:airline_symbols.linenr = '⭡'

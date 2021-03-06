" Abbrevations
"""""""""""""""""""""""""""""""

" Java
ab println System.out.println("");<esc>2hi
ab fori for (int i = 0; i <; i++) {<cr><cr>}<esc>2kf<f;i


" Mappings
"""""""""""""""""""""""""""""""

" Leader key
let mapleader = ","

" Temporary
map <Leader>l <esc>:w<CR>:!cd ~/Dropbox/Studium/Semester2/pa/documents/thesis && pdflatex pa.tex<cr>

" Copy/paste to/from system clipboard
map <Leader>c "+y
map <Leader>v "+p

" Make
map <Leader>m :make<cr>

" Clear search highlighting with spacebar
nnoremap <leader><space> :noh<cr>

" Match bracket pairs with tab key
nnoremap <tab> %
vnoremap <tab> %

" Save file with <C-s>
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" Switch between tabs (gt/gT)
map <C-h> :tabprev<CR>
map <C-l> :tabnext<CR>
" Open new tab
map <C-t> :tabnew<CR>
" Open file browser in new tab
map <C-b> :tabnew<CR>:e .<CR>
" Shortcuts for absolute tab switching
map <A-1> 1gt
map <A-2> 2gt
map <A-3> 3gt
map <A-4> 4gt
map <A-5> 5gt
map <A-6> 6gt
map <A-7> 7gt
map <A-8> 8gt
map <A-9> 9gt
map <A-0> :tablast<CR>

" Move line(s) down/up <A-{j,k}>
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv

" Indent/unident block <leader>{],[}
nnoremap <leader>] >i{<CR>
nnoremap <leader>[ <i{<CR>

" Yank from cursor to end of line
nnoremap Y y$

" Disable arrow keys for movement
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Navigate over wrapped lines
nnoremap j gj
nnoremap k gk


" General Settings
"""""""""""""""""""""""""""""""

" Use vim settings
set nocompatible
" Prevent security exploits
set modelines=0
" Encoding
set encoding=utf-8
" Windowtitle
set title
" Line numbers
set number
" Highlight current line
set cursorline
" Always show tabline
set showtabline=2
" Display unfinished commands
set showcmd
" Display statistics in lower right corner 
set ruler
" Send more characters at a given time
set ttyfast
" Visual instead of audible bell
"set visualbell
" Search
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set wrapscan
" Save file before commands like :make
set autowrite
" Let working directory be the parent directory of the current file
set autochdir
" Wrap line when moving cursor to the end of a line
set whichwrap=b,s,<,>,h,l
" Wrap long lines without breaking words
set wrap linebreak nolist
" Indicate wrapped lines with …
set showbreak=…
" Enable filetype detection, plugin and indent
filetype plugin indent on
" Disable backup and swapfiles
set nobackup
set noswapfile
" Better command line completion
set wildmenu
set wildmode=longest:full
" Bind Q to q
command! Q q


" Theme
"""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax on
" Dark background
set background=dark
" 256 Colors in terminal
set t_Co=256
" molokai theme settings
let g:molokai_original = 1
" Set colorscheme
colorscheme molokai

" Toggle between dark and light background using <F5>
map <F5> :call ToggleBg()<CR>
function! ToggleBg()
    if &background == 'dark'
        set bg=light
    else
        set bg=dark
    endif
endfunc


" GUI
"""""""""""""""""""""""""""""""

if has("gui_running")
  " Window size
  set columns=110
  set lines=999
  " Set font
  set guifont=Source\ Code\ Pro\ Regular\ 10
  "set guifont=Inconsolata\ Medium\ 12
  "set guifont=Monaco\ Regular\ 10
  " Disable menu
  "set guioptions-=m
  " Disable toolbar
  set guioptions-=T
  " Console dialogs instead of popups
  "set guioptions+=c
endif


" Indentation
"""""""""""""""""""""""""""""""

set tabstop=2
set softtabstop=2
set shiftwidth=2
" Use spaces instead of tabs
set expandtab
" Round up to next shiftwidth
set shiftround
" Auto indentation (=)
set autoindent smartindent
" Disable autoindent while pasting text using <F8>
set pastetoggle=<F8>


" Filetype specific indentation
"""""""""""""""""""""""""""""""

" Makefiles should use tabs instead of spaces
autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab


" Java Customizations
"""""""""""""""""""""""""""""""

let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1
" Indentation options for java
set cinoptions+=j1


" Vala Customizations
"""""""""""""""""""""""""""""""

autocmd BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala

" Disable valadoc syntax highlight
"let vala_ignore_valadoc = 1

" Enable comment strings
let vala_comment_strings = 1

" Highlight space errors
let vala_space_errors = 1
" Disable trailing space errors
"let vala_no_trail_space_error = 1
" Disable space-tab-space errors
let vala_no_tab_space_error = 1

" Minimum lines used for comment syncing (default 50)
"let vala_minlines = 120


" Folding
"""""""""""""""""""""""""""""""

"set foldmethod=indent
"set foldlevel=0
"set foldnestmax=2
"set fillchars=stl:_,stlnc:-,vert:\|,fold:\ ,diff:- 
"map F :let &fen = !&fen<return>


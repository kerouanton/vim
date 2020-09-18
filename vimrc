" Hello world
"
" vim:fdm=marker
set nocompatible
filetype plugin indent on

" GUI options {{{
" set number
syntax enable

" set background=dark
set background=dark
" set laststatus=2 " always show the statusline

" Don't beep at me, I can see it isn't working...
set visualbell t_vb=

" Set some sensible diff colours.
" Seriously, the defaults are not easy to comprehend.
" Additions are are dark green
highlight DiffAdd ctermbg=22
" Deleted lines are dark red
highlight DiffDelete ctermbg=52
" Modified lines are dark blue
highlight DiffChange ctermbg=18
" Modified words are a lighter blue
highlight DiffText ctermbg=27
" }}}

" Formatting and indentation {{{
" Use spaces instead of tabs
" set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
" set smarttab
" set autoindent
" }}}

" Editing and text display {{{
set backspace=indent,eol,start
" set showmatch
" Make Y consistent with C and D.  See :help Y.
nnoremap Y y$
" Always show at least one line above/below the cursor
set scrolloff=1
set sidescrolloff=5
set display+=lastline
" Make whitespace visable
set list
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  if &termencoding ==# 'utf-8' || &encoding ==# 'utf-8'
    let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u00b7"
  endif
endif
" Timeout options for commands
set ttimeout
set ttimeoutlen=0
" Highlight 80th column to indicate code should not be at/past that point
" default max width to 80 chars, but dont autowrap when typing.
" set textwidth=79 wrapmargin=0
" set colorcolumn=+1
" highlight ColorColumn ctermbg=Black
set formatoptions+=j " see :h fo-table
" set cursorline
" Use jk to exit insert mode. No esc key on touch bar or ipad keyboard.
inoremap jk <esc>
" }}}

" Searching {{{
" set hlsearch
set incsearch
set ignorecase
set smartcase
" ag is much faster than grep, and reads .gitignore
" https://github.com/ggreer/the_silver_searcher
" if executable('ag')
"   set grepprg=ag\ --nogroup\ --nocolor\ --column\ $*
"   set grepformat=%f:%l:%c:%m"
" " If this is a git directory, use git's grep
" elseif !empty(system("git rev-parse --show-toplevel"))
"   set grepprg=git\ grep\ --line-number\ $*
" endif

set grepprg=grep\ -nI\ --exclude-dir={.git,log,tmp,coverage,ckeditor}\ $*\ /dev/null
" }}}

" Autocomplete {{{
set complete=.,w,b,u,t " see :help cpt
" set wildmode=longest,list:longest
" set completeopt=menu,preview
" }}}

" Swap files {{{
set directory=~/.vim/.swp//
set shortmess+=A
" }}}

" TOhtml settings {{{
let g:html_number_lines = 1
" let g:html_dynamic_folds = 0
" let g:html_no_foldcolumn = 1
let g:html_prevent_copy = "n"
" }}}

" Undo {{{
set undolevels=10000
" if has("persistent_undo")
set undodir=~/.vim/.undo " Allow undoes to persist even after a file is closed
set undofile
" endif
" }}}

" set clipboard+=unnamed
" Include - as part of a word definition. For example, viw will select the
" entire word of 'this-is-hyphened'
set iskeyword+=-



" From the talk https://www.youtube.com/watch?v=XA2WjJbmmoM
" Recursively add all files and folders to the path
" set path+=**

" Display all matching files when we tab complete
" Wildmenu
set wildignore+=*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp
set wildignore+=*.min.js
set wildmode=longest,list,full
" Allows `:find user` to auto resolve to user.rb
" set suffixesadd=.rb

" Netrw config
let g:netrw_banner=0 " disable annoying banner

" " Get that mouse goodness going
" set mouse=a
" " When running tmux, the escape sequence which provides the xterm version
" " doesn't work, so we need to manually say that we can handle nice xterm2
" " mouse features manually.
" set ttymouse=xterm2

" set clipboard=unnamedplus

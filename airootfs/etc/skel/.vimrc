set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
" let Vundle manage Vundle
" required !
Bundle 'gmarik/vundle'

" The bundles you install will be listed here
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
" Bundle 'klen/python-mode'
Bundle 'ctrlpvim/ctrlp.vim'
" Bundle 'keith/swift.vim'
" Bundle 'msanders/cocoa.vim'
" Bundle 'Rip-Rip/clang_complete'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'elzr/vim-json'
Bundle 'tikhomirov/vim-glsl'
Bundle 'nikvdp/ejs-syntax'
Bundle 'kchmck/vim-coffee-script'

" Highlight excess line width
" augroup vimrc_autocmds
"     autocmd!
"     autocmd FileType python hightlight Excess ctermbg=DarkGrey guibg=Black
"     autocmd FileType python match Excess /\%120v.*/
"     autocmd FileType python set nowrap
" augroup END

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set gfn=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operatormodes)
" ]]            Jump on next class or function (normal, visual, operatormodes)
" [M            Jump on previous class or method (normal, visual, operatormodes)
" ]M            Jump on next class or method (normal, visual, operatormodes)
let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Max line length
let g:pymode_options_max_line_length = 120

" my config
" colors Tomorrow-Night-Bright
colors Tomorrow-Night-Bright
set shiftwidth=4
set tabstop=4
set expandtab
filetype plugin on
filetype indent on
syntax on
set nu
" set statusline+=%F\ %l\:%c
set autochdir
nmap <leader>l :set list!<CR>
set mouse=a
set autoread
let NERDTreeQuitOnOpen = 1
set completeopt=menu
set linebreak
autocmd Filetype html,ruby,javascript,json,haskell,ejs setlocal ts=2 sts=2 sw=2
set noswapfile
set wildignore+=*.pyc
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" if has("vms")
"   set nobackup		" do not keep a backup file, use versions instead
" else
"   set backup		" keep a backup file
" endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax enable
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" diff settings
if &diff
	set scrollopt='vertical'
	set wrap=on
endif

" load rsense
let g:rsenseHome = "/usr/local/Cellar/rsense/0.3/libexec"
let g:rsenseUseOmniFunc = 1

" supertab config
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" pathogen.vim
call pathogen#infect()
call pathogen#helptags()


" user defined from here

" save files folding
" au BufWinLeave ?* mkview
" au BufWinEnter ?* silent loadview

" key binding

nnoremap j gj
nnoremap k gk
noremap H ^
noremap L $

" Scroll the viewpoint faster
nnoremap <C-e> 10<C-e>
nnoremap <C-y> 10<C-y>

" use enter to create a new line
nnoremap <CR> o

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" smart escape
inoremap jk <Esc>
inoremap kj <Esc>
inoremap jj <Esc>
inoremap kk <Esc>

" write with sudo
cnoremap suw w !sudo tee % >/dev/null

colorscheme desert
" Highlight trailing whitespace
:highlight TrailWhitespace ctermbg=red guibg=red
:match TrailWhitespace /\s\+$\| \+\ze\t/
"hi Folded cterm=bold ctermfg=1
"hi FoldColumn cterm=bold ctermfg=2

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8

" scroll off
set so=10
set number
set whichwrap=b,s,<,>,[,],h,l

set undofile
set undodir=~/.vim/undo

set nobackup
set writebackup
set noswapfile
helptags ~/.vim/doc

" set filetype
let filetype_m='objc'
let filetype_tpl='smarty'
let filetype_less='less'

" list setting
set list
set listchars=tab:▸-,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" indent setting
set ai
set si
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set formatoptions+=mM
set expandtab

" clipboard
set clipboard=unnamed

" relative number
set relativenumber
" make relative number set for all buffer
au BufReadPost * set relativenumber

" cursor
" set cursorline
" set cursorcolumn
" autocmd WinLeave * set nocursorline
" autocmd WinLeave * set nocursorcolumn
" autocmd WinEnter * set cursorline
" autocmd WinEnter * set cursorcolumn

" rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" airline
"set laststatus=2
"let g:airline_powerline_fonts = 1
"let g:airline_theme='powerlineish'

" powerline
set laststatus=2
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set guifont=Inconsolata\ for\ Powerline:h18

" syntastic
let g:syntastic_check_on_open=1
let g:syntastic_always_populate_loc_list=1

" NERDTree Tabs
let g:nerdtree_tabs_open_on_console_startup=1

" tagbar
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif

let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

" CtrlP
let g:ctrlp_map = '<c-c>'
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" make Y behave like other capitals
map Y y$

" emacs style key binding for insert mode
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-p> <Up>
inoremap <C-n> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <M-b> <C-o>b
inoremap <M-f> <C-o>w
inoremap <C-w> <Esc><Right>cb
inoremap <C-u> <Esc><Right>c0
inoremap <C-k> <Esc><Right>C

" powerful command line
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-d> <Delete>

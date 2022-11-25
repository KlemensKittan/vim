" Environment {{{1
source ~/.vim/bundle/vim-plug/plug.vim

call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
call plug#end()


" Indention Options {{{1
" Enable file type detection
filetype on

" Enable indentation rules that are file-type specific
filetype plugin indent on

" New lines inherit the indentation of previous lines
set autoindent

" Convert tabs to spaces
set expandtab

" When shifting, indent using four spaces
set shiftwidth=4

" Insert 'tabstop' number of spaces when the 'tab' key is pressed
set smarttab

" Indent using four spaces
set tabstop=4


" Search Options {{{1
" Enable search highlighting
set hlsearch

" Ignore case when searching
set ignorecase

" Incremental search that shows partial matches
set incsearch

" Automatically switch search to case-sensitive when search
" query contains an uppercase letter
set smartcase


" Text Rendering Options {{{1
" Use an encoding that supports unicode
set encoding=utf-8

" The number of screen lines to keep above and below the cursor
set scrolloff=7

" Enable syntax highlighting
syntax enable

" Enable line wrapping
set wrap


" User Interface Options {{{1
" Number of colors
set t_Co=256

" Load color scheme
set termguicolors
colorscheme onedark
let g:onedark_termcolor=256

" Don't make noise
set noerrorbells
set novisualbell

" Don't show line numbers
set number

" Don't show line number on the current line and relative
" numbers on all other lines
set relativenumber

" Enable mouse for scrolling and resizing
set mouse=a

" Display command line's tab complete options as a menu
set wildmenu


" Code Folding Options {{{1
" Turn on folding
set foldenable

" Fold on the marker
set foldmethod=marker


" Miscellaneous Options {{{1
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Don't make backup
set nobackup

" Get out of compatible mode
set nocompatible

" Hide files in the background instead of closing them
set hidden

" Increase the undo limit
set history=1000

" Always display the status line, even if only one window is displayed
set laststatus=2

" Ignore files mode lines
set nomodeline

" Display the cursor position on the last line of the screen or
" in the status line of a window
set ruler

" Show matching brackets
set showmatch

" Stop certain movements from always going to the first character of a line
set nostartofline


" Persistence {{{1
set viewoptions=cursor,folds
au BufWinLeave ?* silent! mkview
au BufWinEnter ?* silent! loadview


" Shortcuts {{{1
" The <leader> key is mapped to \ by default.

" Shortcuts for folding
nnoremap <space> za

" Shortcuts for working with multiple files
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Horizontal split
nnoremap + <C-W>+
nnoremap - <C-W>-
nnoremap _ <C-W>_
" Vertical split
nnoremap > <C-W>>
nnoremap < <C-W><
nnoremap \| <C-W>\|
" Normalize all split sizes
nnoremap = <C-W>=


" Plugin plug {{{1
"  :PlugInstall  Install plugins
"  :PlugUpdate   Install or update plugins
"  :PlugClean[!] Remove unlisted plugins
"  :PlugUpgrade  Upgrade vim-plug itself
"  :PlugStatus   Check the status of plugins


" Plugin airline {{{1
" The fonts package should be installed: aptitude install fonts-powerline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'


" Plugin ack {{{1
" The ack package should be installed: aptitude install ack
"  o to open (same as Enter)
"  O to open and close the quickfix window
"  t to open in new tab
"  T to open in new tab without moving to it
"  v to open in vertical split
"  q to close the quickfix window
cnoreabbrev Ack Ack!
nnoremap <leader>a :Ack!<Space>


" Plugin fugitive {{{1
"  :Git     to run any Git commands
"  :Gstatus to check the repository status
"   - stage a file for commit
"   - unstage a file for commit
"  :Gcommit to commit the changes
"  :Gpush   to update the remote repository


" Plugin nerdcommenter {{{1
"  <leader>cc       Comment out the current line or text selected in visual mode
"  <leader>cn       Same as <leader>cc but forces nesting
"  <leader>cu       Uncomments the selected line(s)
"  <leader>c<space> Toggles the comment state of the selected line(s)


" Plugin nerdtree {{{1
"  m to execute filesystem operations
"  i to open the selected file in a horizontal split window
"  s to open the selected file in a vertical split window
"  t to open the selected file in a new tab
"    :gt move to the next tab
"    :gT move to the previous tab
"    :tabc close the current tab and all its windows
"    :tabo close all tabs except for the current one
map <leader>n :NERDTreeToggle<CR>


" Plugin syntastic {{{1
"  :SyntasticCheck run checkers explicitly
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

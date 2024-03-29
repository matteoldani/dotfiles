set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Download plug-ins to the ~/.vim/plugged/ directory
call vundle#begin('~/.vim/plugged')

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'

" Color schemes
Plugin 'cocopon/iceberg.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'Badacadabra/vim-archery'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'scheakur/vim-scheakur'
Plugin 'lifepillar/vim-solarized'
Plugin 'joshdick/onedark.vim'

Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/tagbar'
Plugin 'preservim/nerdtree'
Plugin 'dyng/ctrlsf.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin  'junegunn/fzf.vim'

call vundle#end()
filetype plugin indent on

set nu    " Enable line numbers
set number numberwidth=3
syntax on " Enable syntax highlighting

" How many columns of whitespace a \t is worth
set tabstop=4 
" How many columns of whitespace a "level of indentation" is worth
set shiftwidth=4 
" Use spaces when tabbing
set expandtab

set incsearch  " Enable incremental search
set hlsearch   " Enable highlight search

set termwinsize=12x0   " Set terminal size
set splitbelow         " Always split below
set mouse=a            " Enable mouse drag on window splits

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

set incsearch  " Enable incremental search
set hlsearch   " Enable highlight search

set termwinsize=12x0   " Set terminal size
set splitbelow         " Always split below
set mouse=a            " Enable mouse drag on window splits

set background=dark   " dark or light
colorscheme onedark  " Your favorite color scheme's name

let g:AutoPairsShortcutToggle = '<C-P>' " Control + p toggles brachets pairing

" Focus the panel when opening it
let g:tagbar_autofocus = 1
" Highlight the active tag
let g:tagbar_autoshowtag = 1
" Make panel vertical and place on the right
let g:tagbar_position = 'botright vertical'
" Mapping to open and close the panel
nmap <F8> :TagbarToggle<CR>

let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = "left"     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns

nmap <F2> :NERDTreeToggle<CR>

" Use the ack tool as the backend
let g:ctrlsf_backend = 'ack'
" Auto close the results panel when opening a file
let g:ctrlsf_auto_close = { "normal":0, "compact":0 }
" Immediately switch focus to the search window
let g:ctrlsf_auto_focus = { "at":"start" }
" Don't open the preview window automatically
let g:ctrlsf_auto_preview = 0
" Use the smart case sensitivity search scheme
let g:ctrlsf_case_sensitive = 'smart'
" Normal mode, not compact mode
let g:ctrlsf_default_view = 'normal'
"Use absoulte search by default
let g:ctrlsf_regex_pattern = 0
" Position of the search window
let g:ctrlsf_position = 'right'
" Width or height of search window
let g:ctrlsf_winsize = '46'
" Search from the current working directory
let g:ctrlsf_default_root = 'cwd'

" (Ctrl+F) Open search prompt (Normal Mode)
nmap <C-F>f <Plug>CtrlSFPrompt 
" (Ctrl-F + f) Open search prompt with selection (Visual Mode)
xmap <C-F>f <Plug>CtrlSFVwordPath
" (Ctrl-F + F) Perform search with selection (Visual Mode)
xmap <C-F>F <Plug>CtrlSFVwordExec
" (Ctrl-F + n) Open search prompt with current word (Normal Mode)
nmap <C-F>n <Plug>CtrlSFCwordPath
" (Ctrl-F + o )Open CtrlSF window (Normal Mode)
nnoremap <C-F>o :CtrlSFOpen<CR>
" (Ctrl-F + t) Toggle CtrlSF window (Normal Mode)
nnoremap <C-F>t :CtrlSFToggle<CR>
" (Ctrl-F + t) Toggle CtrlSF window (Insert Mode)
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'evidens/vim-twig'
Plugin 'Dinduks/vim-java-get-set'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on

" Open NerdTree tab
map <C-n> :NERDTreeToggle<CR>

" Other configurations

colorscheme jellybeans    " Awesome colorscheme
syntax on                 " Enable syntax processing
set background=dark

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on
filetype indent on

" For js files, 2 spaces
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

set number              " Show line numbers
set showcmd             " Show command in bottom bar

set cursorline          " Highlight current line
filetype indent on      " Load filetype-specific indent files

set wildmenu            " Visual autocomplete for command menu

set lazyredraw          " Redraw only when we need to.

set showmatch           " Highlight matching [{()}]

set incsearch           " Search as characters are entered
set hlsearch            " Highlight matches

" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set foldmethod=syntax
let php_folding=1
let html_folding=1
set foldenable          " Enable folding
set foldlevelstart=10   " Open most folds by default
set foldnestmax=10      " 10 nested fold max

" Space open/closes folds
nnoremap <space> za

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

set nowrap       "Don't wrap lines
" set linebreak  "Wrap lines at convenient points

" Values on the right bottom of the screen
set ruler

let g:ycm_server_python_interpreter = '/usr/bin/python2'
let g:ycm_auto_trigger = 1

" Set normal mode with jk in insert mode
inoremap jk <Esc>

set completeopt-=preview

set pastetoggle=<F2> " To permit pasted code to stay well indented
nnoremap <f3> :noh<CR>

" Let lines after/below cursor in the corners of the screen
set scrolloff=2

" More natural screen split
set splitbelow
set splitright

" Auto repeat last command
noremap <C-P> @:<CR>

" Shortcut to move line up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>==gv
vnoremap <C-k> :m '<-2<CR>==gv

" Split line
nnoremap <C-h> J
nnoremap <C-l> i<CR><Esc>

" Change page up/down binds
nnoremap J 10j
nnoremap K 10k


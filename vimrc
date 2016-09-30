set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'evidens/vim-twig'
"Plugin 'https://github.com/docteurklein/php-getter-setter.vim.git'
"Plugin 'https://github.com/jiangmiao/auto-pairs.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

map <C-n> :NERDTreeToggle<CR>

" Other configurations

colorscheme jellybeans         " awesome colorscheme
syntax on           " enable syntax processing
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

" for js files, 2 spaces
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

set number              " show line numbers
set showcmd             " show command in bottom bar

set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files

set wildmenu            " visual autocomplete for command menu

set lazyredraw          " redraw only when we need to.

set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default

set foldnestmax=10      " 10 nested fold max

" space open/closes folds
nnoremap <space> za

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

set nowrap       "Don't wrap lines
"set linebreak    "Wrap lines at convenient points

set ruler

let g:ycm_server_python_interpreter = '/usr/bin/python2'
let g:ycm_auto_trigger = 1
inoremap jk <Esc>

set completeopt-=preview

set pastetoggle=<F2> " To permit pasted code to stay well indented
nnoremap <f3> :noh<CR>

" Fix scroll to 10 lines. Better for my eyes.
set scroll=10

" Let lines after/below cursor
set scrolloff=999

" switch split screen easier
nnoremap <C-J> <C-W><C-J> " overrided
nnoremap <C-K> <C-W><C-K> " overrided
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" more natural split
set splitbelow
set splitright

" Auto repeat last command
noremap <C-P> @:<CR>

" Shortcut to move line up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>==gv
vnoremap <C-k> :m '<-2<CR>==gv

" Split line down
nnoremap <C-h> J
nnoremap <C-l> i<CR><Esc>k$
nnoremap J <Nop>
nnoremap K <Nop>

" change page up/down binds
nnoremap J <C-d>
nnoremap K <C-u>
nnoremap <C-d> <Nop>
nnoremap <C-u> <Nop>
nnoremap H <Nop>
nnoremap L <Nop>

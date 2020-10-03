" Turn on syntax highlighting.
syntax on
set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
" ----------------------Begin MyPlugs----------------------
" Search all files into the current directory
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
" A light and configurable statusline/tabline plugin for Vim
Plugin 'itchyny/lightline.vim'
" Awesome plugin for html tags
Plugin 'mattn/emmet-vim'
" The NERDTree
Plugin 'preservim/nerdtree'
" Gruvbox theme
Plugin 'morhetz/gruvbox'
" Vim icons
Plugin 'ryanoasis/vim-devicons'
" YouCompleteMe
Plugin 'ycm-core/YouCompleteMe'
" -----------------------End MyPlugs-----------------------
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

" Begin My sets
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set nobackup
set laststatus=2
set number
set bg=dark
" set mouse=ni
set encoding=UTF-8
" End My sets

"########################### Begin My maps ###########################
map ; :Files<CR>
map <C-o> :NERDTreeToggle<CR>
" End My maps

" Gruvbox confs
let g:gruvbox_bold= '(1)'
let g:gruvbox_constrast = '(hard)'
let g:gruvbox_constrast_dark = '(hard)'
colorscheme gruvbox

" YouCompleteMe confs
set completeopt-=preview

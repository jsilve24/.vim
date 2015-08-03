set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.


"""""" Colorschemes """""
" from http://vimawesome.com/plugin/vim-colors-solarized-sparks-fly
Plugin 'altercation/vim-colors-solarized'
"from http://vimawesome.com/plugin/vividchalk-vim
Plugin 'tpope/vim-vividchalk'
" from http://vimawesome.com/plugin/molokai
Plugin 'tomasr/molokai'
""""""""""""""""""""""""""

" from http://vimawesome.com/plugin/tagbar
Plugin 'majutsushi/tagbar'
" from http://vimawesome.com/plugin/easymotion 
Plugin 'Lokaltog/vim-easymotion'
" from http://vimawesome.com/plugin/syntastic
Plugin 'scrooloose/syntastic'
" from http://vimawesome.com/plugin/the-nerd-tree
Plugin 'scrooloose/nerdtree'

" from http://vimawesome.com/plugin/hardmode
Plugin 'wikitopian/hardmode'

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

syntax enable
set background=dark
colorscheme vividchalk 

set tabstop=4
set shiftwidth=4
set expandtab

set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
     \ [%l/%L\ (%p%%)
filetype plugin indent on

"""""""" PYTHON """""""""
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 Friendly
"""""""""""""""""""""""""
""""""" JAVA """""""""""
au FileType java set smartindent
au FileType java set autoindent
""""""""""""""""""""""""

""""""" SLURM """""""""""
au FileType slurm set smartindent
au FileType slurm set autoindent
""""""""""""""""""""""""

"""""""" TAGBAR """""""
nmap <C-t> :TagbarToggle<CR>
"""""""""""""""""""""""

"""""""" NERDTree """""""
nmap <C-n> :NERDTreeToggle<CR>
"""""""""""""""""""""""

"""""""" HardMode """""""
" Turn it on by default
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
""""""""""""""""""""""""

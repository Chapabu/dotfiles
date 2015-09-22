set nocompatible              " be iMproved, required
filetype off                  " required

"""
" VUNDLE BEGIN
"""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"""""""""""""
" PLUGINS
"""""""""""""

" https://github.com/bling/vim-airline
Plugin 'bling/vim-airline'

" https://github.com/tpope/vim-unimpaired
Plugin 'tpope/vim-unimpaired'

" https://github.com/easymotion/vim-easymotion
Plugin 'easymotion/vim-easymotion'

" https://github.com/scrooloose/syntastic/
Plugin 'scrooloose/syntastic'

" https://github.com/godlygeek/tabular
" This is a dependency of vim-markdown
Plugin 'godlygeek/tabular'

" https://github.com/plasticboy/vim-markdown
Plugin 'plasticboy/vim-markdown'

" https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'

" https://github.com/kien/ctrlp.vim
Plugin 'kien/ctrlp.vim'

" https://github.com/ddollar/nerdcommenter
Plugin 'ddollar/nerdcommenter'

" https://github.com/airblade/vim-gitgutter
Plugin 'airblade/vim-gitgutter'

" https://github.com/terryma/vim-multiple-cursors
Plugin 'terryma/vim-multiple-cursors'

" https://github.com/ntpeters/vim-better-whitespace
Plugin 'ntpeters/vim-better-whitespace'

"""""""""""""
" PLUGINS END
"""""""""""""

call vundle#end()            " required
filetype plugin indent on    " required

"""
" VUNDLE END
"""
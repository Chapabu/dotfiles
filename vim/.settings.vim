set nocompatible                              " Disable vi-compatibility
set t_Co=256
filetype off
set fileencodings=utf-8
set encoding=utf-8
set showmode                                  " always show what mode we're currently editing in
set nowrap                                    " don't wrap lines
set tabstop=4                                 " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=4                             " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                                 " expand tabs by default (overloadable per file type later)
set shiftwidth=4                              " number of spaces to use for autoindenting
set shiftround                                " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start                " allow backspacing over everything in insert mode
set autoindent                                " always set autoindenting on
set copyindent                                " copy the previous indentation on autoindenting
set number                                    " always show line numbers
set ignorecase                                " ignore case when searching
set smartcase                                 " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell                                " don't beep
set noerrorbells                              " don't beep
set autowrite  "Save on buffer switch
set mouse=a
set tw=79
set formatoptions+=t
set wrap linebreak nolist
set nofoldenable
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set showcmd                                   " Show (partial) command in the status line
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

" Run PHPUnit tests
map <Leader>t :!phpunit %<cr>
" Thigns in this file could probably go somewhere wlse, but I'm too lazy to categorise.

highlight Search cterm=underline

autocmd cursorhold * set nohlsearch
autocmd cursormoved * set hlsearch

" Remove search results
command! H let @/=""

" Auto-remove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e
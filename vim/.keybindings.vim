" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saves
nmap <leader>w :w!<cr>
" Fast save and quit
nmap <leader>q :wqa!<cr>

" Open a Toc for markdown files
nmap ,c :Toc<cr>

" Quickly go forward or backward to buffer
nmap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>

" Create split below
nmap :sp :rightbelow sp<cr>

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
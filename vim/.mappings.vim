" Fast saves
nmap <leader>w :w!<cr>

" Down is really the next line
nnoremap j gj
nnoremap k gk

"Easy escaping to normal model
imap jj <esc>

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"easier window navigation

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

nmap <C-b> :NERDTreeToggle<cr>

"Load the current buffer in Chrome
nmap ,c :!open -a Google\ Chrome<cr>


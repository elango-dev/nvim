" g Leader key
let mapleader=" "
let localleader=","
nnoremap <Space> <Nop>

" FZF mappings
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :RG<CR>
nnoremap <leader>fm :Marks<CR>

" Buffers
nnoremap <silent> <TAB> :bnext<CR> " TAB in general mode will move to text buffer
nnoremap <silent> <S-TAB> :bprevious<CR> " SHIFT-TAB will go back
nnoremap <leader>bb :Buffers<CR>
nnoremap <leader>bd :bdelete<CR>

" Window management
imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l

nnoremap <leader>w <C-w>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Startify
nnoremap <leader>d :Startify<CR>

" Open git
nnoremap <leader>g :FloatermNew lazygit<CR>

" Map the leader key + q to toggle quick-scope's highlighting in normal/visual mode.
" Note that you must use nmap/xmap instead of their non-recursive versions (nnoremap/xnoremap).
nmap <leader>q <plug>(QuickScopeToggle)
xmap <leader>q <plug>(QuickScopeToggle)

" Move across wrapped lines like regular lines
noremap 0 ^ " Go to the first non-blank character of a line
noremap ^ 0 " Just in case you need to go to the very beginning of a line

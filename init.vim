" Load plugins
source $HOME/.config/nvim/vim-plugs.vim

" Theme
set termguicolors
syntax enable
set background=dark
colorscheme solarized8

" Navigation
let g:netrw_banner = 0
let g:netrw_liststyle = 3
source $HOME/.config/nvim/fzf-settings.vim

" Code Intelligence
source $HOME/.config/nvim/coc-settings.vim

" Key mappings
source $HOME/.config/nvim/key-mappings.vim

" Startify
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [{ 'type': 'sessions',  'header': ['Sessions'] }]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:startify_enable_special = 0

" Fold with syntax
set foldmethod=syntax
set foldlevelstart=2

set showtabline=2

" airline
let g:airline#extensions#tabline#enabled = 1


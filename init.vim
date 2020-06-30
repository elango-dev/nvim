" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Theme
  Plug 'lifepillar/vim-solarized8'

  " Navigation
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'

  " Code intelligence
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" g Leader key
let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>

" Theme
set termguicolors
syntax enable
set background=dark
colorscheme solarized8

" Navigation
" Set ranger
let g:rnvimr_ex_enable = 1
nmap <space>r :RnvimrToggle<CR>

" FZF
source $HOME/.config/nvim/fzf-settings.vim

" Code Intelligence
" COC.vim settings
source $HOME/.config/nvim/coc-settings.vim

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

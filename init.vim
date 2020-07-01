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
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Navigation
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  Plug 'mhinz/vim-startify'

  " Code intelligence
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-sleuth' " auto indent
  Plug 'sheerun/vim-polyglot' " Better syntax support

  " Terminals to run things
  Plug 'voldikss/vim-floaterm'

  " Vim Utils - Nouns and verbs
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'justinmk/vim-sneak'
  Plug 'tommcdo/vim-exchange'
  Plug 'vim-scripts/ReplaceWithRegister'
  Plug 'vim-scripts/argtextobj.vim'

call plug#end()

" g Leader key
let mapleader=" "
let localleader=","
nnoremap <Space> <Nop>

" Theme
set termguicolors
syntax enable
set background=dark
colorscheme solarized8

" Navigation
" Set ranger
let g:rnvimr_ex_enable = 1

" FZF
source $HOME/.config/nvim/fzf-settings.vim

" Code Intelligence
" COC.vim settings
source $HOME/.config/nvim/coc-settings.vim

" Key mappings
source $HOME/.config/nvim/key-mappings.vim

" Startify
source $HOME/.config/nvim/startify-settings.vim

" Fold with syntax
set foldmethod=syntax

set showtabline=2

" airline
" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

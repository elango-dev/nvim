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
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  Plug 'mhinz/vim-startify'
  Plug 'tpope/vim-eunuch'

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
  Plug 'unblevable/quick-scope'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

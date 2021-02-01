" need ln from ~/.vimrc

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'
Plug 'connorholyday/vim-snazzy'
Plug 'lmintmate/blue-mood-vim'
Plug 'rhysd/vim-color-spring-night'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'stephpy/vim-yaml', {'for': 'yaml'}
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'hail2u/vim-css3-syntax'
Plug 'jlanzarotta/bufexplorer'
Plug 'ap/vim-css-color'
Plug 'tomtom/tcomment_vim'
Plug 'mhinz/vim-startify'
Plug 'leafoftree/vim-vue-plugin'
Plug 'moll/vim-node'
" to browse files
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'kristijanhusak/defx-icons'
" fuzzy search files, string, command...
" need install ggreer/the_silver_searcher
" split floating only support for neovim 0.4.0+(nvim_open_win)
if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'heavenshell/vim-jsdoc', {
      \ 'for': ['javascript', 'javascript.jsx','typescript'],
      \ 'do': 'make install'
      \}
Plug 'voldikss/vim-floaterm'
Plug 'godlygeek/tabular', {'for': 'markdown'}
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

" Initialize plugin system
call plug#end()

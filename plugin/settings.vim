syntax on
set number
set title
set ruler
set autoread
set wrap
set linebreak
set numberwidth=4
set nobomb
set laststatus=2
set clipboard+=unnamed
set showcmd
set cmdheight=1
set scrolloff=5
set laststatus=2
set hlsearch
set incsearch
set t_Co=256
set nobackup
set noswapfile
set nowritebackup
set splitright
set splitbelow
set showtabline=2
set switchbuf=useopen
set wildmenu
set synmaxcol=128
set ttyfast
set lazyredraw
set copyindent
set ignorecase
set smartcase
set smarttab
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2

" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500

" file encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" ignores
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*/node_modules/*

" cursorline
set cursorline

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" shell setting for RVM
set shell=/bin/zsh

" ======================================
"  custom key and plugin configurations
" ======================================

" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x

" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Delete a word backwards
nnoremap dw vb"_d

" Select all
nmap <C-a> gg<S-v>G

" Save with root permission
command! W w !sudo tee > /dev/null %

"-------------------------------------------------------------------------------
" Tabs
"-------------------------------------------------------------------------------
" Open current directory
nmap te :tabedit
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

"-------------------------------------------------------------------------------
" Windows
"-------------------------------------------------------------------------------
" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l


"-------------------------------------------------------------------------------
" Buffer
"-------------------------------------------------------------------------------
" previous and next buffer
noremap [b :bp<Enter>
noremap ]b :bn<Enter>


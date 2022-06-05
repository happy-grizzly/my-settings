:set relativenumber
:set autoindent

:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set scrolloff=999

let mapleader = " "

nnoremap <leader>nh :noh<CR>
nnoremap o o<Esc>i
nnoremap <Leader>o o<Esc>
nnoremap <Leader>q :q<CR>

nnoremap <leader>s <C-w>s
nnoremap <leader>v <C-w>v
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>, <C-w><
nnoremap <leader>. <C-w>>
nnoremap <leader>= <C-w>+
nnoremap <leader>- <C-w>-
nnoremap <leader>L <C-w>L
nnoremap <leader>K <C-w>K
nnoremap <leader>J <C-w>J
nnoremap <leader>H <C-w>H
nnoremap <leader>R <C-w>R
nnoremap <leader>r <C-w>r

nnoremap <leader>l 5l
nnoremap <leader>h 5h
nnoremap <leader>j 5j
nnoremap <leader>k 5k

nnoremap L $
nnoremap H 0
nnoremap K gg0
nnoremap J G)

nnoremap <leader>0 0i
nnoremap <leader>p a<CR><Esc>

nnoremap <leader>P a<CR>
nnoremap <leader>t :term<CR>

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Langauge Shorcuts
set iminsert=0

let s:hebrew = 1

function! LangToggle()
  if s:hebrew
    execute 'set keymap=hebrew'
    let s:hebrew = 0
  else
    execute 'set iminsert=0'
    let s:hebrew = 1
  endif
endfunction

nnoremap w :call LangToggle()<CR>

let g:instant_markdown_mathjax = 1

let g:coq_settings = { 'auto_start': v:true }

call plug#begin()

Plug 'https://github.com/machakann/vim-highlightedyank'
Plug 'scrooloose/nerdtree'

Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

Plug 'vimwiki/vimwiki'

call plug#end()

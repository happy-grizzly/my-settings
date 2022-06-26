set number
set autoindent

tnoremap <Esc> <C-\><C-n>:q!<CR>set shiftwidth=2
set smarttab
set tabstop=2
set softtabstop=0
set shiftwidth=2
set scrolloff=999
let mapleader = " "

nmap <leader>nh :noh<CR>
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>3 :so init.vim<CR>
imap <C-Space> <Esc>
nmap <C-Space> i

" configure line creating
map o o<Esc>i
map <C-o> o<Esc>
imap <C-o> <CR>
map <leader>o i<CR><Esc>
imap <C-p> <Esc>o

" navigation in editing mode
autocmd VimEnter * imap <C-h> <Left>
autocmd VimEnter * imap <C-j> <Down>
autocmd VimEnter * imap <C-k> <Up>
autocmd VimEnter * imap <C-l> <Right>

" Jump editor navigation in vim mode
map <C-l> 5l
map <C-h> 5h
vmap <C-j> 5j
vmap <C-k> 5k

" jump to end of line or doc
map <leader>l $
map <leader>h 0

" delete in editing mode
imap <C-s> <Bs>
imap <C-u> <Esc>ua
imap <C-r>  <Esc><C-r>a
" imap <C-w> <Esc>diwa
imap <C-d> <Esc>lxa

" delete content of line without deleting the line
nmap <leader>d d$d0x

" open and navigate tabs -->

" open tabs hor and ver
nmap <leader>s <C-w>s
nmap <leader>v <C-w>v

" navigating between tabs
nmap H <C-w>h
nmap J <C-w>j
nmap K <C-w>k
nmap L <C-w>l

" resising tabs
nmap . <C-w>>
nmap , <C-w><
nmap = <C-w>+
nmap - <C-w>-
nmap <leader>L <C-w>L
nmap <leader>K <C-w>K
nmap <leader>J <C-w>J
nmap <leader>H <C-w>H
nmap <leader>R <C-w>R
nmap <leader>r <C-w>r

" Automatically close
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

nnoremap <leader>t :term<CR>
tnoremap <Esc> <C-\><C-n>

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"Langauge Shorcuts
set iminsert=0

let s:hebrew = 1

function SmoothScroll(up)
    if a:up
        let scrollaction="k"
    else
        let scrollaction="j"
    endif
    exec "normal " . scrollaction
    redraw
    let counter=1
    let mil = 10
    while counter<5
        let counter+=1
	exec 'sleep '.mil.'m'  
	let mil += 10
        redraw
        exec "normal " . scrollaction
    endwhile
endfunction

nmap <C-k> :call SmoothScroll(1)<Enter>
nmap <C-j> :call SmoothScroll(0)<Enter>

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

call plug#begin()

Plug 'https://github.com/machakann/vim-highlightedyank'
Plug 'scrooloose/nerdtree'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

Plug 'psliwka/vim-smoothie'

call plug#end()

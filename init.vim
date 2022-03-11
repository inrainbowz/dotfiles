set number
set relativenumber
set numberwidth=1
set noswapfile
set noshowmode
set scrolloff=5
set mouse=a
set clipboard=unnamed
set incsearch
set ignorecase
set smartcase
set shiftwidth=4
syntax enable

call plug#begin('~/.config/.nvim/plugged')

Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree' 
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'

call plug#end()

colorscheme gruvbox

highlight Normal ctermbg=none
highlight NonText ctermbg=none

let mapleader=" "

" vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline#extensions#tabline#left_alt_sep = '|'

" Plug-Easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" NerdTree
nmap <Leader>n :NERDTreeFind<CR>
" let NERDTreeQuitOnOpen=1

" open new split panes to right and below
set splitright
set splitbelow

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <Leader>b :call OpenTerminal()<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

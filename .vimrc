"execute pathogen#infect()
filetype plugin indent on
syntax on

colorscheme molokai

set number
autocmd InsertEnter * :set relativenumber
autocmd InsertLeave * :set norelativenumber

set noexpandtab
set tabstop=4
set textwidth=79

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:markdown_folding = 1

" Enable folding with the spacebar
nnoremap <space> za
vnoremap <space> zf

" Clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" Python: proper PEP8 indentation
au BufNewFile,BufRead *.py
		\ set tabstop=4 |
		\ set softtabstop=4 |
		\ set shiftwidth=4 |
		\ set textwidth=79 |
		\ set expandtab |
		\ set autoindent |
		\ set fileformat=unix

au BufNewFile,BufRead *.html,*.js,*.ts
		\ set tabstop=2 |
		\ set softtabstop=2 |
		\ set shiftwidth=2 |
		\ set textwidth=100 |
		\ set expandtab |
		\ set autoindent |
		\ set fileformat=unix

" http://stackoverflow.com/a/26685437
highlight ColorColumn ctermbg=red
" call matchadd('ColorColumn', '\%80v', 100)
call matchadd('ColorColumn', '\%80v')
" set colorcolumn=80

" http://stackoverflow.com/questions/15153381/why-is-my-vim-colorscheme-changing-when-i-change-buffers/15153602#15153602
"autocmd BufEnter *.txt colorscheme darkblue

autocmd BufReadPost *.{irt,xsp} set filetype=xml

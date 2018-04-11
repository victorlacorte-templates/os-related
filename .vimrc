"execute pathogen#infect()
filetype plugin indent on
syntax on

colorscheme molokai

set number
set noexpandtab
set tabstop=4
set textwidth=79

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za
vnoremap <space> zf

" Python: proper PEP8 indentation
au BufNewFile,BufRead *.py
		\ set tabstop=4 |
		\ set softtabstop=4 |
		\ set shiftwidth=4 |
		\ set textwidth=79 |
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

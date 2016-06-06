set nobackup

color wombat256

set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2

set encoding=utf-8

set autoindent

set backspace=2

set hls

" auto folding
set foldmethod=indent
"set foldcolumn=2
set foldlevel=20
set foldlevelstart=20


" whitespace chars
set list
set listchars=tab:>.,trail:.,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.



" loadin templates base on file type
"autocmd BufNewFile * silent! call LoadTemplate('%:h')
autocmd BufNewFile,BufRead * silent! call LoadTemplate('%:e')
"autocmd BufNewFile,BufRead * silent! call LoadPatterns('%:e')
" autocmd BufNewFile * call Testing('%:h')

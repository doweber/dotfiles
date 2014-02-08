noremap <C-B> :!php -l -f %<CR>

map <Leader>n :NERDTreeToggle<CR>
map <Leader>o :TagbarToggle<CR>
map <Leader>t <C-p>

"map <F2> :NERDTreeToggle<CR>
map <F4> VaBzf

map <C-l>	:bn<CR>
map <C-h>	:bp<CR>

map <C-k>	:cp<CR>
map <C-j>	:cn<CR>

" turn spell check on... use z= to get suggestion list
map <F9>	:setlocal spell spelllang=en_us<CR>
map <F8>	:setlocal nospell<CR>

" HTML Tidy, http://tidy.sourceforge.net/
" select xml text to format and hit ,x
vmap ,x :!tidy -q -i -xml<CR>


" map placeholder sections for use with templates
nnoremap <tab> /<+.\{-1,}+><cr>c/+>/e<cr>
inoremap <c-j> <ESC>/<+.\{-1,}+><cr>c/+>/e<cr>
match Todo /<+.\++>/


command -nargs=0 BD call DelBufferAndNext()
map <Leader>d :BD<CR>

" ctrl funky
noremap <C-f> :CtrlPFunky<CR>
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

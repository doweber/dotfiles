" fill this out


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ================= Naviagtion ====================
Bundle 'scrooloose/nerdtree'

Bundle 'kien/ctrlp.vim'

Bundle 'majutsushi/tagbar'
  let g:tagbar_compact = 1
  let g:tagbar_sort = 0
  let g:tagbar_autofocus = 1


" ===================== UI ========================
Bundle 'bling/vim-airline'
  let g:airline_theme = 'powerlineish'
  let g:airline_enable_branch = 1
  let g:airline_enable_syntastic = 1
  let g:airline#extensions#whitespace#enabled = 0


  " vim-powerline symbols
  let g:airline_left_sep = '⮀'
  let g:airline_left_alt_sep = '⮁'
  let g:airline_right_sep = '⮂'
  let g:airline_right_alt_sep = '⮃'
  let g:airline_branch_prefix = '⭠'
  let g:airline_readonly_symbol = '⭤'
  let g:airline_linecolumn_prefix = '⭡'

" ================== Commands =====================
Bundle 'tpope/vim-fugitive'


Bundle 'tpope/vim-commentary'
  autocmd FileType ruby set commentstring=#\ %s
  autocmd FileType vim set commentstring=\"\ %s
  autocmd FileType javascript set commentstring=\/\/\ %s

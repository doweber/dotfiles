 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*
 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 0
 let g:syntastic_check_on_wq = 0

 " let g:syntastic_go_checkers = ['go']
 let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
 let g:syntastic_go_go_build_args = "-o /dev/null"

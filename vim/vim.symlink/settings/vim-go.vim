"

au FileType go nmap <leader>gr <Plug>(go-run)



" open the Godoc in browser
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

"Show a list of interfaces which is implemented by the type under your cursor with <leader>s
au FileType go nmap <Leader>in <Plug>(go-implements)


au FileType go nmap <Leader>rn <Plug>(go-rename)

au FileType go nmap <Leader>gi :GoImports<CR>


 let g:go_auto_type_info = 1
 let g:go_highlight_functions = 1
 let g:go_highlight_methods = 1
 let g:go_highlight_structs = 1
 let g:go_highlight_operators = 1
 let g:go_highlight_build_constraints = 1
 let g:go_fmt_fail_silently = 1

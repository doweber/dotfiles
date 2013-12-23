
function! LoadTemplate(extension) 
	"silent! :execute '0r $VIMHOME/templates/'. a:extension. '.tpl' 
	silent! execute 'source $VIMHOME/filetypes/'. a:extension. '.vim' 
endfunction
function! LoadPatterns(extension) 
	let foo = a:extension
	"silent! execute 'source $VIMHOME/templates/'. a:extension. '.patterns.tpl' 
	silent! execute 'source $VIMHOME/templates/'. foo . '.patterns.tpl' 
endfunction


function DelBufferAndNext()
    let s:old_bufnr = bufnr('%')
    bnext
    exec s:old_bufnr . 'bd'
    unlet s:old_bufnr
endfunction

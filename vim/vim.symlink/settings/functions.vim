
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



" Autosave Session
function! AutosaveSessionOn(session_file_path)
  augroup AutosaveSession
    au!
    exec "au VimLeave * mks! " . a:session_file_path
  augroup end
  let g:AutosaveSessionFilePath = a:session_file_path

  echo "Auto-saving sessions to \"" . a:session_file_path . "\""
endfunction

function! AutosaveSessionOff()
  if exists("g:AutosaveSessionFilePath")
    unlet g:AutosaveSessionFilePath
  endif

  augroup AutosaveSession
    au!
  augroup end
  augroup! AutosaveSession

  echo "Auto-saving sessions is off"
endfunction

command! -complete=file -nargs=1 AutosaveSessionOn call AutosaveSessionOn(<f-args>)
command! AutosaveSessionOff call AutosaveSessionOff()

augroup AutosaveSession
  au!
  au SessionLoadPost * if exists("g:AutosaveSessionFilePath") != 0|call AutosaveSessionOn(g:AutosaveSessionFilePath)|endif
augroup end

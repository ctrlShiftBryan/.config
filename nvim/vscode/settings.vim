" Better Navigation
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>

nnoremap zM :call VSCodeNotify('editor.foldAll')<CR>
nnoremap zR :call VSCodeNotify('editor.unfoldAll')<CR>
nnoremap zc :call VSCodeNotify('editor.fold')<CR>
nnoremap zC :call VSCodeNotify('editor.foldRecursively')<CR>
nnoremap zo :call VSCodeNotify('editor.unfold')<CR>
nnoremap zO :call VSCodeNotify('editor.unfoldRecursively')<CR>
nnoremap za :call VSCodeNotify('editor.toggleFold')<CR>

xnoremap q :call ExecuteSQL()<CR>
nnoremap q :call ExecuteSQL()<CR>

nnoremap gG :call VSCodeNotify('workbench.scm.focus')<CR>
xnoremap gG :call VSCodeNotify('workbench.scm.focus')<CR>

nnoremap gF :call VSCodeNotify('workbench.files.action.focusFilesExplorer')<CR>
xnoremap gF :call VSCodeNotify('workbench.files.action.focusFilesExplorer')<CR>


function! ExecuteSQL()
	normal! gv
	let startline = line("v")
	let endline = line(".")
	call VSCodeNotifyVisual('sqltools.executeQuery', 1)
endfunction

function! MoveCursor(direction) abort
    if(reg_recording() == '' && reg_executing() == '')
        return 'g'.a:direction
    else
        return a:direction
    endif
endfunction

nmap <expr> j MoveCursor('j')
nmap <expr> k MoveCursor('k')

nnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
xnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>

nnoremap ? <Cmd>call VSCodeNotify('search.action.openNewEditor', { 'query': expand('<cword>'),  'focusResults': 'true'})<CR>

nnoremap <Leader>d <PageDown>
xnoremap <Leader>d <PageDown>

nnoremap <Leader>u <PageUp>
xnoremap <Leader>u <PageUp>

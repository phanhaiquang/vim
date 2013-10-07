"for snip & supertab
let g:UltiSnipsExpandTrigger='<c-l>'
"let g:UltiSnipsListSnippets = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<c-l>'
let g:UltiSnipsJumpBackwardTrigger = '<c-h>'

set runtimepath+=~/.vim/bundle/ultisnips
let g:ulti_expand_or_jump_res = 0 "default value, just set once                                                                                                                      
function! Ulti_ExpandOrJump_and_getRes()                                                                                                                                             
  call UltiSnips_ExpandSnippetOrJump()                                                                                                                                               
  return g:ulti_expand_or_jump_res                                                                                                                                                   
endfunction
inoremap <NL> <C-R>=(Ulti_ExpandOrJump_and_getRes() > 0)?"":IMAP_Jumpfunc('', 0)<CR>

inoremap <expr> <C-j>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k>     pumvisible() ? "\<C-p>" : "\<Up>"

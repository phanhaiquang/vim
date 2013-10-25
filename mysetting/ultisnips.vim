"for snip & supertab
let g:UltiSnipsExpandTrigger='<tab>'
"let g:UltiSnipsListSnippets = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<c-tab>'

set runtimepath+=~/.vim/bundle/ultisnips
let g:ulti_expand_or_jump_res = 0 "default value, just set once                                                                                                                      
function! Ulti_ExpandOrJump_and_getRes()                                                                                                                                             
  call UltiSnips_ExpandSnippetOrJump()                                                                                                                                               
  return g:ulti_expand_or_jump_res                                                                                                                                                   
endfunction
inoremap <NL> <C-R>=(Ulti_ExpandOrJump_and_getRes() > 0)?"":IMAP_Jumpfunc('', 0)<CR>


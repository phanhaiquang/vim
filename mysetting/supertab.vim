"set completeopt+=longest
"let g:SuperTabLongestEnhanced = 1
"let g:SuperTabLongestHighlight = 1
"let g:SuperTabDefaultCompletionType = "<c-n>"
"let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "<c-x><c-]>"

"testing
let g:SuperTabCrMapping = 0
"let g:SuperTabDefaultCompletionType = "context"
"testing
let g:SuperTabCrMapping = 0
"let g:SuperTabClosePreviewOnPopupClose=1
"let g:SuperTabRetainCompletionDuration='completion'
"set infercase 

:highlight Pmenu guibg=brown gui=bold
:highlight Pmenu ctermbg=238 gui=bold

inoremap <expr><TAB>      pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <C-j>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k>     pumvisible() ? "\<C-p>" : "\<Up>"

"inoremap <expr><CR>  pumvisible() ? neocomplete#close_popup() : "\<CR>"
"imap <CR>    pumvisible() ? neocomplcache#close_popup() : "\<CR>"
":inoremap <expr> <CR> pumvisible() ? "\<CR> " : "\<CR>"

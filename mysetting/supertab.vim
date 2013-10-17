set completeopt+=longest
let g:SuperTabLongestEnhanced = 1
let g:SuperTabLongestHighlight = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
"testing
let g:SuperTabCrMapping = 0
"let g:SuperTabClosePreviewOnPopupClose=1
"let g:SuperTabRetainCompletionDuration='completion'
"set infercase 

:highlight Pmenu guibg=brown gui=bold
:highlight Pmenu ctermbg=238 gui=bold

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

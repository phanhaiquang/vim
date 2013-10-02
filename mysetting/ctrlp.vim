"CTRLP plugin
"map ff :CtrlP ~/public_html<CR>
let g:ctrlp_working_path_mode = 'r'
map ff :CtrlP<CR>
map ft :CtrlPTag<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/][\.](git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(exe|so|dll|png|jpg)$',
"  \ 'link': 'some_bad_symbolic_links',
"  \ }

" if PHP
"let g:ctrlp_user_command = 'find %s -type f -name "*php" -or -name "*css" -or -name "*js" | egrep -v "system\/|not_using|view_variables|views\/"'
" for Ruby
"let g:ctrlp_user_command = 'find %s -type f -name "*php" -or -name "*css" -or -name "*js" -or -name "*rb" '
"let g:ctrlp_user_command = 'find %s -type f -not -name "*swp" -or "*jpg" | egrep -v "/\." | egrep -v "~|coverage" '
let g:ctrlp_user_command = 'find %s -type f | egrep -v "\.git|tmp|\<log\>|coverage|^./public|^./vendor" | egrep -v "png$|jpg$|.keep|zip$|swp$"'

let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
"let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_cache_dir = '~/.cache/ctrlp'


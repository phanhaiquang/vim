"syntax check
" On by default, turn it off for html
"let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [], 'passive_filetypes': ['html'] }
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [], 'passive_filetypes': [] }
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_html_tidy_ignore_errors = ["trimming empty"]
let g:syntastic_ruby_exec = 'ruby'
let g:syntastic_error_symbol = 'X'
let g:syntastic_warning_symbol = '!'
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_balloons=1
highlight SyntasticErrorLine guibg=#2f0000

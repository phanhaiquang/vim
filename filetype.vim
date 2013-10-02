runtime! ftdetect/*.vim

""for multiple file type loaded for checkers
"augroup filetypedetect 
"    au BufNewFile,BufRead *.html.erb set filetype=ruby.html
"    au BufNewFile,BufRead *.js.erb set filetype=javascript.ruby 
"    au BufNewFile,BufRead *.r.erb set filetype=r.ruby 
"augroup end 
"
augroup filetypedetect 
    au BufNewFile,BufRead *.fish set filetype=csh
    au BufNewFile,BufRead *.html.erb set filetype=eruby.html
augroup end 
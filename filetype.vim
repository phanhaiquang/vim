"au BufRead,BufNewFile * runtime! ftdetect/*.vim

""for multiple file type loaded for checkers
"augroup filetypedetect 
"    au BufNewFile,BufRead *.html.erb set filetype=ruby.html
"    au BufNewFile,BufRead *.js.erb set filetype=javascript.ruby 
"    au BufNewFile,BufRead *.r.erb set filetype=r.ruby 
"augroup end 
"
augroup filetypedetect 
    au BufNewFile,BufRead *.fish set filetype=csh
    au BufNewFile,BufRead *.rabl set filetype=ruby
    au BufNewFile,BufRead *.sv set filetype=systemverilog
    au BufNewFile,BufRead *.v set filetype=verilog
    au BufNewFile,BufRead *.rb set filetype=ruby

    "mark a tag blocks in html
    au BufNewFile,BufRead *.html.erb map vv <c-y>d
    au BufNewFile,BufRead *.html.erb imap vv <c-y>d
augroup end 


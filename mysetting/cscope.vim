"cscope
"we update by ~/bin/monitor_projects
au BufNewFile,BufRead * call UpdateProjectData()

if has("cscope")
    set csprg=/usr/local/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    "if filereadable("cscope.out")
    "    cs add cscope.out
    "endif
    " else add database pointed to by environment
    "if $CSCOPE_DB != ""
    "    cs add $CSCOPE_DB
    "endif
endif
"cscope add ~/cscope.out

nmap fa :cs find s <C-R>=expand("<cword>")<CR><CR><Tab>
nmap fs :cs find s <C-R>=expand("<cword>")<CR><CR><Tab>
nmap fd :cs find g <C-R>=expand("<cword>")<CR><CR><Tab>
nmap fp <C-T>

nmap <C-\>s :cs find s =expand("")
nmap <C-\>g :cs find g =expand("")
nmap <C-\>c :cs find c =expand("")
nmap <C-\>t :cs find t =expand("")
nmap <C-\>e :cs find e =expand("")
nmap <C-\>f :cs find f =expand("")
nmap <C-\>i :cs find i ^=expand("")$
nmap <C-\>d :cs find d =expand("")

set nohlsearch

nmap <c-]> :cstag <C-R>=expand("<cword>")<CR><CR>
nmap fn :cstag <C-R>=expand("<cword>")<CR><CR>

"set tags=~/.project/*/tags
"cs add ~/.project/hoch/cscope.out ~/code/hoch

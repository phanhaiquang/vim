"set guifont="courier new":h10:w5
syntax on


:set cmdheight=2

"should use virtual-mode
map <C-W><C-D> :'q,'wd<CR>
map <C-W><C-Y> :'q,'wy<CR>
"
"comment line (already use nerd_commenter)
"map <C-W><C-K> :'q,'wnormal 0i//<CR>
"map <C-W><C-J> :'q,'wnormal 0xx<CR>

"map <C-W><C-H> :'q,'wnormal 0x<CR>
map ,ll :normal @e<CR>                           | "loop for a @e
map ,mm :call ToggleMouseSetting()<CR>           | "toggle mouse

"
map ,il :'q,'wnormal 0i	<CR>                     | "insert tab at beginning of line
map ,ih :'q,'wnormal 0x<CR>                      | "delete 1st character (for alignment)
:nmap ,ss :mksession! ~/.vim/session/            | "save session
:nmap ,os :so ~/.vim/session/                    | "open session

map ,ca :g/^/normal dd<CR>                        | "clean all file
  
"grep php/css/js
map ,fp :exec ":vimgrep //gj ~/public_html/application/**/*php"<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
map ,fc :exec ":vimgrep //gj ~/public_html/css/**/*css"<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
map ,fj :exec ":vimgrep //gj ~/public_html/js/**/*js"<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

"for php-document
:inoremap <c-w><c-p> <esc>:call PhpDocSingle()<cr>
:nnoremap <c-w><c-p> :call PhpDocSingle()<cr>
:vnoremap <c-w><c-p> :call PhpDocRange()<cr> 

"
"[[ [{ [( ]) ]} ]]

":so ~/.web
:so ~/.function


"tab mapping
:nmap gf <CR>:tab split<CR>
:nmap tn :tabn<CR>
:nmap tp :tabp<CR>

if has("multi_byte")    " if not, we need to recompile
  if &enc !~? '^u'      " if the locale 'encoding' starts with u or U
                        " then Unicode is already set
    if &tenc == ''
      let &tenc = &enc  " save the keyboard charset
    endif
    set enc=utf-8       " to support Unicode fully, we need to be able
                        " to represent all Unicode codepoints in memory
  endif
  set fencs=ucs-bom,utf-8,latin1
  setg bomb             " default for new Unicode files
  setg fenc=latin1      " default for files created from scratch
else
  echomsg 'Warning: Multibyte support is not compiled-in.'
endif

"go to line of previous left (only with file with extension)
"au BufWinLeave * mkview
"au BufWinEnter *.* silent loadview
"
" Uncomment the following to have Vim jump to the last position when                                                       
" " reopening a file
if has("autocmd")
   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif


" Use pathogen to load plugins from bundle directory
filetype off
call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

" set tag file
set tags=/home/quangphan/tags

set hlsearch		"highlight search

"tab setting
set noet ci pi sts=0 sw=4 ts=4

"nowrap
set wrap! nu nobackup writebackup
set ignorecase                                | "set ignore case searching

"set filename
set isfname-=,

"set path for Linux command execution
set path+=.,~/public_html,~/public_html/application,~

"auto reload
":set ar


"NERDTree plugin
map ,nt :NERDTree<CR>

"search file in sub-folders
map ff :FufCoverageFile<CR>
map ,ff :FufCoverageFile<CR>

"search directory
map fd :FufDir<CR>
map ,fd :FufDir<CR>

filetype plugin on                            | "filetype on

" On my machine, I use an old Konsole with 256 color support
set t_Co=256
let g:CSApprox_konsole = 1

"collor
"colorscheme desert
colorscheme wombat

set guifont="ubuntu mono":h11:w5

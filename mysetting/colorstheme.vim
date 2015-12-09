set t_Co=256
if &term =~ '256color'
  set t_ut=
endif

"collor
"colorscheme github
"colorscheme desert
"colorscheme wombat
"colorscheme railscasts
":highlight Normal ctermfg=grey ctermbg=black

"colorscheme twilight
"colorscheme candycode
"colorscheme jellybeans
"let g:jellybeans_overrides = {
      "\    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
      "\              'ctermfg': 'Black', 'ctermbg': 'Yellow',
      "\              'attr': 'bold' },
      "\}
"let g:jellybeans_use_lowcolor_black = 0
"autocmd FileType * colorscheme jellybeans

"let blacklist = ['js']
"autocmd BufWritePre * if index(blacklist, &ft) < 0 
  
"endif
"let g:hybrid_use_Xresources = 1
colorscheme hybrid
"colorscheme lucius
"let g:lucius_style = 'dark'


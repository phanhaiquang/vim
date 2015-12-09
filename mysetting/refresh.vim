function! Refresh_repo()
  :!~/bin/gen_tags ; rm -rf ~/.cache/ctrlp/*
endfunction

map <f5> :call Refresh_repo()<CR>

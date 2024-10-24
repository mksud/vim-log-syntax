au BufNewFile,BufRead *.log set filetype=log

setlocal foldexpr=getline(v:lnum)=~@/?0:1

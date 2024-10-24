setlocal foldexpr=getline(v:lnum)=~@/?0:1 foldmethod=expr
function! MyFoldText()
    let nl = v:foldend - v:foldstart + 1
    let txt = '+ ' . nl . ' lines'
    return txt
endfunction
setlocal foldtext=MyFoldText()

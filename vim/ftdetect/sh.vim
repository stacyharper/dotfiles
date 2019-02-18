fun! s:SelectShell()
    if getline(1) =~# '^#!.*/bin/\%(env\s\+\)\?\(bash\|shell\)\>'
        setf sh
    endif
endfun
au BufNewFile,BufRead * call s:SelectShell()

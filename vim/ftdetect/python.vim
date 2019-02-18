fun! s:SelectPython()
    if getline(1) =~# '^#!.*/bin/\%(env\s\+\)\?\(python\)\>'
        setf sh
    endif
endfun
au BufNewFile,BufRead * call s:SelectPython()

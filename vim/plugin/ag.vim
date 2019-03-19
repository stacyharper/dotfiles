if executable('ag')
    set grepprg=ag\ --vimgrep\ -a\ -n\ $*\ /dev/null
    set grepformat=%f:%l:%c:%m
endif

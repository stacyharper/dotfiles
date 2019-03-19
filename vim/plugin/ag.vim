if executable('ag')
    set grepprg=ag\ --vimgrep\ -u\ -n\ $*\ /dev/null
    set grepformat=%f:%l:%c:%m
endif

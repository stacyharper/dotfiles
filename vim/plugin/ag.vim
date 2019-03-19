if executable('ag')
    set grepprg=ag\ --vimgrep\ -n\ $*\ /dev/null
    set grepformat=%f:%l:%c:%m
endif

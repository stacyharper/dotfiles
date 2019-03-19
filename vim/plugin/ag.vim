if executable('ag')
    set grepprg=ag\ --vimgrep\ -uns\ $*\ /dev/null
    set grepformat=%f:%l:%c:%m
endif

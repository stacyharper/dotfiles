function HideComments()
    let save_cursor = getpos(".")
    silent g/\/\*\*/.,/\*\//fold
    call setpos('.', save_cursor)
endfunction

nmap <leader>hc :call HideComments()<CR>

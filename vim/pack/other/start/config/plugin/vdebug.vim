if !exists('g:vdebug_options')
    let g:vdebug_options = {}
endif
let g:vdebug_options.path_maps = {"/var/www/html/": getcwd()."/"}
let g:vdebug_options.break_on_open = 0

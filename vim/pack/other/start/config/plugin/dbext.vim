let g:dbext_default_profile_ubitransport2cloud = 'type=PGSQL:user=www-data:passwd=ubitransports:dbname=postgres:host=localhost'

augroup project_ubitransport
    au!
    " Automatically choose the correct dbext profile
    autocmd BufRead */Workspace/Ubitransport/* DBSetOption profile=ubitransport2cloud
augroup end

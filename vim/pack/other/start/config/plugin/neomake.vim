let g:neomake_php_phpcs_args_standard='PSR2'
let g:neomake_yaml_yamllint_args='-f parsable -c ~/.yamllintrc'

call neomake#configure#automake('nrwi', 500)

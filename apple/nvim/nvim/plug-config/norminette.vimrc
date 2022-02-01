" Enable norminette-vim (and gcc)
let g:syntastic_c_checkers = ['norminette']
let g:syntastic_aggregate_errors = 1

" Set the path to norminette (do no set if using norminette of 42 mac)
let g:syntastic_c_norminette_exec = '~/.local/bin/norminette'
let g:syntastic_mode_map = {"mode": "passive"}
map <C-c> :SyntasticCheck<CR>
map <leader>c :SyntasticReset<CR>

" Support headers (.h)
let g:c_syntax_for_h = 1
let g:syntastic_c_include_dirs = ['includes', '../includes', '../../includes', 'libft', '../libft/includes', '../../libft/includes']

" Enable error list
let g:syntastic_always_populate_loc_list = 1

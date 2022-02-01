""" Coloring

" Functions and autocmds to run whenever changing colorschemes
function! DraculaPMenu()
    highlight Pmenu guibg=#363948
    highlight PmenuSbar guibg=#363948
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme dracula call DraculaPMenu()
    "autocmd ColorScheme * call TransparentBackground() " uncomment if you are using a translucent terminal and you want nvim to use that
augroup END

" Main Coloring Configurations
syntax on
colorscheme cyberpunk-neon

" Enable True Color Support (ensure you're using a 256-color enabled $TERM, e.g. xterm-256color)
 set termguicolors

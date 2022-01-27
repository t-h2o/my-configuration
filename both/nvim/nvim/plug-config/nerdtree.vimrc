" NERDTree
let NERDTreeShowHidden=1
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nnoremap <f12> :NERDTreeFocus<CR>
nnoremap <S-f12> :NERDTreeFind<CR>
nnoremap <C-q> :NERDTreeToggle<CR>

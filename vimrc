" " ===========================
" " Classic 
" " ===========================
set number
set number
set tabstop=2

" " ===========================
" " Rainbow Parenthesis
" " ===========================
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"
" " ===========================
" " Code Complete
" " ===========================
let g:neocomplcache_enable_at_startup = 1
"
" "au VimEnter * NERDTree
"
" nmap <F8> :TagbarToggle<CR>
"
"
"
" " ===========================
" " Pathogen  - Start
" " ===========================
execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_scala_checkers = ['syntastic-checkers-scala']


" " ===========================
" " Ensime VIM Plugin
" " ===========================
Plug 'ensime/ensime-vim'

" "autocmd BufWritePost *.scala silent :EnTypeCheck
" "nnoremap <localleader>t :EnTypeCheck<CR>



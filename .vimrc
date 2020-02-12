inoremap <C-c> <ESC>
let g:ftplugin_sql_omni_key = '<C-j>'
syntax on
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set spell

" Jekyll用
inoremap $ts <C-R>=strftime("%Y-%m-%d %H:%M:%S +0900")<RETURN>

call plug#begin('~/.vim/plugged')

Plug 'elmcast/elm-vim'

call plug#end()

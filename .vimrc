inoremap <C-c> <ESC>
let g:ftplugin_sql_omni_key = '<C-j>'
syntax on
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent

call plug#begin('~/.vim/plugged')

Plug 'elmcast/elm-vim'

call plug#end()

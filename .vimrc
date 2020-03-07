inoremap <C-c> <ESC>
let g:ftplugin_sql_omni_key = '<C-j>'
syntax on
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set smartindent
" set spell
" set spelllang=en,cjk
set clipboard+=unnamed

" Jekyll用
inoremap $ts <C-R>=strftime("%Y-%m-%d %H:%M:%S +0900")<RETURN>

call plug#begin('~/.vim/plugged')

Plug 'elmcast/elm-vim'
Plug 'previm/previm'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': './install --in' }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'

call plug#end()

" previm
let g:previm_open_cmd = 'open -a Google\ Chrome'

" emmet
" let g:user_emmet_expandabbr_key = '<TAB>'
let g:user_emmet_install_global = 0

autocmd FileType vue set filetype=html

augroup html
    autocmd!
    autocmd FileType html,css EmmetInstall |
                \ imap <buffer><expr> <TAB>
                \ emmet#isExpandable() ? "\<plug>(emmet-expand-abbr)"
                \                      : "\<TAB>" |
                \ set shiftwidth=2 |
                \ set tabstop=2 |
                \ set autoindent |
                \ set smartindent
augroup END

nnoremap + :NERDTreeToggle<CR>
nnoremap <C-P> :Files<SPACE>.<CR>

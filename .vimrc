set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim' "required
Plugin 'tpope/vim-fugitive' "reuquired
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'kchmck/vim-coffee-script'
Plugin 'moll/vim-node'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on " Put your non-Plugin stuff after this line

filetype plugin indent on
set autoindent
set cindent
set smartindent
set backspace=2
set nocompatible
set ruler
set nu
set tabstop=2
set shiftwidth=4
set softtabstop=2
set expandtab
set showcmd
set showmatch
set enc=UTF-8
set fileencodings=UTF-8
set title
set tabstop=4 shiftwidth=4 et
set formatoptions-=r
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
syntax on

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_section_d = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
"To avoid conflict snippets
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1


nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>p :YcmCompleter GetParent<CR>

map <Leader>nt <ESC>:NERDTree<CR>
execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4 shiftwidth=4 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
set softtabstop=2
set expandtab

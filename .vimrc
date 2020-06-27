"Daeho's Vim settings
"install plugin
"1 :source %
"2 :PluginInstall
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'scrooloose/nerdtree'
Plugin 'shougo/vimshell.vim'
Plugin 'shougo/vimproc.vim'
Plugin 'bling/vim-airline'
Plugin 'itchyny/calendar.vim' "ex) :Calendar :Calendar -view-clock
"Plugin 'Yggdroot/indentLine'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'plasticboy/vim-markdown'
"Plugin 'tommcdo/vim-lion' "ex) gl,
Plugin 'pangloss/vim-javascript'
Plugin 'diepm/vim-rest-console'
Plugin 'aquach/vim-http-client'
Plugin 'jason0x43/vim-js-indent'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ekalinin/dockerfile.vim'
Plugin 'stephpy/vim-yaml'
call vundle#end()            " required
filetype plugin indent on    " required

set clipboard=unnamed
set mouse=a
set autoindent
set cindent
set smartindent
set backspace=2
set nocompatible
set ruler
set nu
set tabstop=2
set expandtab
set shiftwidth=4
set softtabstop=2
set showcmd
set showmatch
set enc=UTF-8
set fileencodings=UTF-8
set title
set tabstop=4 shiftwidth=4 et
set formatoptions-=r
syntax on

"VimShell Setting
nnoremap <F4> <ESC>:sp<CR><C-w><C-w><ESC>:resize 15<CR><ESC>:VimShell<CR>
"NERDTree Setting
nnoremap <F3> <ESC>:NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"Calendar Setting
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
"IndentLine Setting
let g:indentLine_color_gui = '#385900'
let g:indentLine_color_term = 100
let g:indentLine_char = '¦'
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 0
let g:indentLine_enabled = 0
let g:indentLine_fileTypeExclude = ['help', 'nerdtree', 'text', 'sh']
let g:indentLine_bufNameExclude = ['_.*', 'NERD_tree.*']
let g:indentLine_maxLines = 3000
nnoremap \il :IndentLinesToggle

"javascript setting
let g:javascript_plugin_jsdoc = 1
set conceallevel=1
set concealcursor=""

autocmd FileType javascript inoremap   @ =syntax_expand#expand("@", "this")
autocmd FileType javascript inoremap   # =syntax_expand#expand("#", ".prototype.")
autocmd FileType javascript inoremap   < =syntax_expand#expand_head("<", "return")
let g:javascript_conceal_function  = "ƒ"
let g:javascript_conceal_prototype = "#"
let g:javascript_conceal_return    = "<"
let g:javascript_conceal_static    = "•"
let g:javascript_conceal_super     = "Ω"
let g:javascript_conceal_this      = "@"
let g:javascript_conceal_undefined = "¿"
let g:javascript_conceal_null      = "ø"
"map l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"

"indent guides setting
let g:indent_guides_enable_on_vim_startup = 1
nnoremap <F2> :IndentGuidesToggle<CR>

"vim-rest-console
"let g:vrc_trigger = ',J'
let g:vrc_curl_opts = {
  \ '-sS': '',
  \ '--connect-timeout': 10,
  \ '-i': '',
  \ '--max-time': 60,
  \ '-k': '',
\}
let g:vrc_show_command = 1
"let g:vrc_debug = 1

let s:vrc_auto_format_response_patterns = {
  \ 'json': 'python -m json.tool',
  \ 'xml': 'xmllint --format -',
\}

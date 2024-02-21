mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set paste
set pastetoggle=<F2>
set expandtab
set mouse=a
let g:user_emmet_expandabbr_key = '<Tab>'">>~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone git://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
git clone https://github.com/moll/vim-node.git ~/.vim/bundle/node
git clone https://github.com/kchmck/vim-coffee-script.git ~/.vim/bundle/vim-coffee-script/
git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim
git clone https://github.com/groenewege/vim-less ~/.vim/bundle/vim-less
git clone https://github.com/marijnh/tern_for_vim.git ~/.vim/bundle/tern_for_vim
git clone https://github.com/othree/tern_for_vim_coffee.git ~/.vim/bundle/tern_for_vim_coffee
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

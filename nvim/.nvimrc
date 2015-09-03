" plugins

execute pathogen#infect()
syntax on
filetype plugin indent

mkdir -p ~/.nvim/autoload ~/.nvim/bundle && \
curl -LSso ~/.nvim/autoload/pathogen.nvim https://tpo.pe/pathogen.vim
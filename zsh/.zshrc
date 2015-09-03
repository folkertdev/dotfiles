# stuff
export DOTFILES=$HOME/.dotfiles
export ZSH=$DOTFILES/zsh
export EDITOR='vim'

# define the code directory
if [[ -d ~/code ]]; then
    export CODE_DIR=~/code
fi

# load all zsh config files
# for config in ($ZSH/**/*.zsh) source $config

for config in $ZSH/*.zsh; do 
    source $config
done 

if [[ -a ~/.localrc ]]; then
    source ~/.localrc
fi

alias gitp="git pull --recurse-submodules --rebase"
alias qt="qtcreator -stylesheet=/home/folkert/.dotfiles/QT-Creator-Darcula/darcula.css"
PS1=$'\e[0;31m%~ $ \e[0m'


## Base16 Shell
export THEME="base16-mocha"
if [ -z "$BACKGROUND" ]; then
    export BACKGROUND="dark"
fi

BASE16_SHELL="$DOTFILES/.config/base16-shell/$THEME.$BACKGROUND.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
source $BASE16_SHELL initialize autocomplete

export PATH=/home/folkert/anaconda3/bin:/usr/bin/node_modules/elm/bin:$PATH

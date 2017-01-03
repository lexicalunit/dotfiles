#! .zshrc
# shellcheck disable=SC1090
# shellcheck disable=SC2034

##################
# oh-my-zsh
##################

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lexicalunit"
CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git)
source $ZSH/oh-my-zsh.sh

##################
# user
##################

SHELL="$(which zsh)"
export SHELL

if [[ -f "$HOME/.profile" ]]; then
    source "$HOME/.profile"
fi

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

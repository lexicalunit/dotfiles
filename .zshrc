#! .zshrc
# shellcheck disable=SC1090
# shellcheck disable=SC2034

# Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Get rid of interactive rm from prezto's utility module, which I otherwise want.
unalias rm

# First setup shared profile settings, then setup zsh specific settings.
SHELL="$(which zsh)"
export SHELL

################################################################################
# interactive settings
################################################################################
if $INTERACTIVE; then

if [[ -f "$HOME/.profile" ]]; then
    source "$HOME/.profile"
fi

# load any personal completions
autoload -Uz bashcompinit && bashcompinit
_source_completions() {
  if [[ -d "$1" ]]; then
      for I in "$1"/*; do
          # shellcheck source=.profile
          source "$I" 2>/dev/null
      done
  elif [[ -f "$1" ]]; then
      # shellcheck source=.profile
      source "$1" 2>/dev/null
  fi
}
_source_completions ~/.complete 2>/dev/null

# setup zsh run-help
unalias run-help
autoload run-help
export HELPDIR="/usr/local/share/zsh/help"
alias help='run-help '

fi # if $INTERACTIVE

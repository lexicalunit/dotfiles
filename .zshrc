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
SHELL="$(command -v zsh)"
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
        if [[ -d $1 ]]; then
            # shellcheck disable=SC2167
            for I in "$1"/*; do
                # shellcheck source=.profile
                # shellcheck disable=SC1091
                source "$I" 2>/dev/null
            done
        elif [[ -f $1 ]]; then
            # shellcheck source=.profile
            # shellcheck disable=SC1091
            source "$1" 2>/dev/null
        fi
    }
    _source_completions ~/.complete 2>/dev/null

    # setup zsh run-help
    unalias run-help
    autoload run-help
    export HELPDIR="/usr/local/share/zsh/help"
    alias help='run-help '

    # Setup fasd via prezto
    # shellcheck source=.zprezto/modules/fasd/init.zsh
    # shellcheck disable=SC1091
    source "$HOME/.zprezto/modules/fasd/init.zsh"
    unalias j                # undo prezto's weird fasd alias
    alias a='fasd -a'        # any
    alias s='fasd -si'       # show / search / select
    alias d='fasd -d'        # directory
    alias f='fasd -f'        # file
    alias sd='fasd -sid'     # interactive directory selection
    alias sf='fasd -sif'     # interactive file selection
    alias z='fasd_cd -d'     # cd, same functionality as j in autojump
    alias zz='fasd_cd -d -i' # cd with interactive selection

    # disable the super annoying "did you mean?" feature in zsh
    unsetopt correct
    unsetopt correctall

    # stop asking me twice
    setopt rm_star_silent

    # setup fzf
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

    # Disable autotitle
    DISABLE_AUTO_TITLE="true"

fi # if $INTERACTIVE

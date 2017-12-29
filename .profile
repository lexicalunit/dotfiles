#! .profile

INTERACTIVE=false
if [[ $- == *i* ]]; then
    INTERACTIVE=true
fi

################################################################################
# setup paths and env
################################################################################
export PATH=""

# Allow OS X tool to discover typical PATH items first, if possible.
if [[ -e /usr/libexec/path_helper ]]; then
    eval "$(/usr/libexec/path_helper -s)"
else
    test -d /usr/bin && PATH="$PATH:$_"
    test -d /bin && PATH="$PATH:$_"
    test -d /usr/sbin && PATH="$PATH:$_"
    test -d /sbin && PATH="$PATH:$_"
    test -d /usr/local/bin && PATH="$PATH:$_"
    test -d /opt/X11/bin && PATH="$PATH:$_"
fi

# Then add specific paths that I use.
test -d /usr/local/opt/ruby/bin && PATH="$PATH:$_"
test -d /opt/local/bin && PATH="$PATH:$_"
test -d /opt/local/sbin && PATH="$PATH:$_"

# Export currently built PATH so the rest of this script has access to them.
if test -e /usr/libexec/path_helper; then
    eval "$($_ -s)"
else
    export PATH
    export MANPATH
fi

# Make sure Homebrew utilities override system utilities.
if type brew >/dev/null 2>&1; then
    BREW_PREFIX="$(brew --prefix)"
    test -d "$BREW_PREFIX/bin" && PATH="$_:$PATH"
    test -d "$BREW_PREFIX/sbin" && PATH="$_:$PATH"
    # Don't use brew installed python. Prefer an Anaconda distro instead.
    # test -d "$BREW_PREFIX/lib/python2.7/site-packages" && PYTHONPATH="$PYTHONPATH:$_"
    BREW_COREUTILS_PREFIX="$(brew --prefix coreutils 2>/dev/null)"
    if [[ $? == 0 ]]; then
        test -d "$BREW_COREUTILS_PREFIX/libexec/gnubin" && PATH="$_:$PATH"
        test -d "$BREW_COREUTILS_PREFIX/libexec/gnuman" && MANPATH="$_:$MANPATH"
    fi
    export PATH
    export MANPATH
    export PYTHONPATH
fi

# Add specific application paths, such as Python, rvm, etc...
test -d "$HOME/.cargo/bin" && PATH="$PATH:$_"
test -d "$HOME/.rvm/bin" && PATH="$PATH:$_"
test -d "$HOME/.log-ninja" && PATH="$PATH:$_"
test -d /usr/local/lib/svn-python && PYTHONPATH="$_:$PYTHONPATH"
test -d /opt/local/lib/pkgconfig && PKG_CONFIG_PATH="$_:$PKG_CONFIG_PATH"
test -d /usr/local/lib/pkgconfig && PKG_CONFIG_PATH="$_:$PKG_CONFIG_PATH"

# Visual Studio Code
test -d "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" && PATH="$PATH:$_"

# Go's env
GOPATH="/usr/local/lib/gopath"
if [[ ! -d "$GOPATH" ]]; then
    mkdir -p "$GOPATH"
fi
test -d "$GOPATH/bin" && PATH="$PATH:$_"
test -d /usr/local/opt/go/libexec/bin && PATH="$PATH:$_"
export GOPATH

# Make sure user utilities take precedence
test -d "$HOME/bin" && PATH="$_:$PATH"

export PATH
export PYTHONPATH
export PKG_CONFIG_PATH

USER="$(whoami)"
HOST="$(uname -n)"
PLATFORM="$(uname)"
export USER
export HOST
export PLATFORM

################################################################################
# interactive settings
################################################################################
if $INTERACTIVE; then

# print timestamp and given message
_interactive_log() {
    echo "$(date +%H:%M:%S.%N) - $*"
}

set -o emacs

################################################################################
# setup base16-shell -- https://github.com/chriskempson/base16-shell
################################################################################
_interactive_log "setting up base16-shell"
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
type -f _base16 >/dev/null 2>&1 && _base16 "$BASE16_SHELL/scripts/base16-solarized-light.sh" solarized-light

################################################################################
# python environment control
################################################################################
test -f "$HOME/.pythonrc.py" && PYTHONSTARTUP="$_"

export PYTHONSTARTUP
export VIRTUAL_ENV_DISABLE_PROMPT=1
export PYTHON_ENV=""

entervirtualenv() {
    exitconda

    if type virtualenvwrapper.sh >/dev/null 2>&1; then
        # shellcheck source=virtualenvwrapper.sh
        source "$(which virtualenvwrapper.sh)"
    fi
    export PYTHON_ENV="virtualenv"
}

exitvirtualenv() {
    if [[ -n "$VIRTUAL_ENV" ]]; then
        if type deactivate >/dev/null 2>&1; then
            deactivate
        fi
    fi
    unset PYTHON_ENV
}

# shellcheck disable=SC2120
enterconda() {
    # should be safe to exitvirtualenv just in case we're in a virtualenv
    exitvirtualenv

    # assume anaconda is installed in your home directory unless specified
    local ANACONDA_DIR_NAME="/usr/local/miniconda3"
    if [[ -z "$1" ]]; then
        export ANACONDA_ROOT="$ANACONDA_DIR_NAME"
    else
        export ANACONDA_ROOT="$1"
    fi

    if [[ ! -e "$ANACONDA_ROOT" ]]; then
        echo "error: can not enter anaconda env at '$ANACONDA_ROOT', directory does not exist."
        return 1
    fi

    test -d "$ANACONDA_ROOT/bin" && PATH="$_:$PATH"
    test -d "$ANACONDA_ROOT/share/man" && MANPATH="$_:$MANPATH"
    export PATH
    export MANPATH
    export PYTHON_ENV="conda"

    # provide bash completion for conda
    if [[ "$SHELL" =~ "bash" ]]; then
        eval "$(register-python-argcomplete conda)"
    fi
}

exitconda() {
    if [[ -n "$CONDA_DEFAULT_ENV" ]]; then
        if which deactivate >/dev/null 2>&1; then
            source deactivate
        fi
    fi

    if [[ -n "$ANACONDA_ROOT" ]]; then
        PATH="$(echo "$PATH" | sed "s@$ANACONDA_ROOT/bin@@g;s@::@:@g;s@^:@@;s@:\$@@;")"
        MANPATH="$(echo "$PATH" | sed "s@$ANACONDA_ROOT/share/man@@g;s@::@:@g;s@^:@@;s@:\$@@;")"
        export PATH
        export MANPATH
    fi
    unset PYTHON_ENV
}

HISTFILE="$HOME/.$(basename "$SHELL")_history.$(uname -s)"
export HISTFILE
export HISTCONTROL=ignoredups:erasedups
export TERMINAL_HISTORY_SIZE="100000"
export HISTSIZE="$TERMINAL_HISTORY_SIZE"
export HISTFILESIZE="$TERMINAL_HISTORY_SIZE"
export SAVEHIST="$TERMINAL_HISTORY_SIZE"

################################################################################
# setup terminal colors and editors
################################################################################
if type dircolors >/dev/null 2>&1; then
    eval "$(dircolors -b "$HOME/.dircolors" 2>/dev/null)" # sets LS_COLORS
    alias ls='ls -hF --color=auto'
fi
export CLICOLOR=1
alias l='ls '
alias ll='ls -l '

# setup editor
export EDITOR=vim
export CVSEDITOR=vim
export XEDITOR=vim
export IGNOREEOF=0
if type atom >/dev/null 2>&1; then
    # export EDITOR='atom -w'
    # export CVSEDITOR='atom -w'
    export OSXEDITOR='atom -w'
    alias edit='atom '
    ew() { atom "$(which "$1")"; }
    eman() { man "$@" | col -bx | tmpin atom -w & }
elif type subl >/dev/null 2>&1; then
    # export EDITOR='subl -w'
    # export CVSEDITOR='subl -w'
    export OSXEDITOR='subl -w'
    alias edit='subl '
    ew() { subl "$(which "$1")"; }
    eman() { man "$@" | col -bx | subl -w & }
elif type vim >/dev/null 2>&1; then
    alias edit='vim '
    ew() { vim "$(which "$1")"; }
    eman() { man "$@" | col -bx | vim -; }
fi

# setup atom beta if it's installed
if type atom-beta >/dev/null 2>&1; then
    alias edit='atom-beta '
    alias atom='atom-beta '
    alias apm='apm-beta '
    ew() { atom-beta "$(which "$1")"; }
fi

vman() { man "$@" | col -bx | vim -; }

# setup man
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

################################################################################
# setup aliases and functions
################################################################################
alias st='stree '
alias bc='bc -l '
alias profile='valgrind --tool=callgrind --dump-instr=yes --simulate-cache=yes --collect-jumps=yes '
alias memcheck='valgrind --tool=memcheck --leak-check=yes -show-reachable=yes -fno-inline --logfile=memcheck.log '
alias pygmentize='pygmentize -O bg=dark'
alias gits='git s '
alias gitsu='git s -u '
alias yapf='yapf --style="{based_on_style: pep8, column_limit: 120}" '
alias fa='rg '

# This ipython alias prevents `ipython notebook` from working correctly.
# alias ipython='ipython --no-banner --no-confirm-exit '

if type ncftp >/dev/null 2>&1; then alias ftp='ncftp '; fi
if type share >/dev/null 2>&1; then alias shares='share '; fi
if type htop >/dev/null 2>&1; then alias top='htop '; fi

export RSYNC_RSH=rsh # use ssh over rsync
alias ssh='ssh -Y -C ' # use compression over ssh connections

fuck() {
    die $1
    if [[ $? == 0 ]]; then
        echo
        echo " (╯°□°）╯︵$(echo $1 | flip 2>/dev/null)"
        echo
    fi
}

lw() {
    local LOC
    local FINFO
    local REAL
    LOC="$(which "$1")"
    echo "$LOC"
    FINFO="$(file -h "$LOC")"
    if [[ "$FINFO" =~ "symbolic link to" ]]; then
        SYLOC="$(echo "$FINFO" | sed 's@.*symbolic link to\s*\(.*\)@\1@')"
        if [[ "$SYLOC" != /* ]]; then
            LOC="$(dirname "$LOC")/$SYLOC"
        else
            LOC="$SYLOC"
        fi
        echo "$LOC"
        if type realpath >/dev/null 2>&1; then
            REAL="$(realpath "$LOC")"
            if [[ "$REAL" != "$LOC" ]]; then
                echo "$REAL"
            fi
        fi
    fi
}

hist() {
    [[ $1 == "--workaround-sc2120" ]] && return
    if [[ "$SHELL" =~ "zsh" ]]; then
        if [[ -n "$*" ]]; then
            history 1 | egrep "^[0-9]+\s*$*"
        else
            history 1
        fi
    elif [[ "$SHELL" =~ "bash" ]]; then
        history | egrep "^[0-9]+\s*$*"
    fi
}
hist --workaround-sc2120 # see: https://github.com/koalaman/shellcheck/wiki/SC2120

# use gnu-sed if available
if type gsed >/dev/null 2>&1; then
    alias sed='gsed '
fi

# shellcheck source=.docker_functions
test -f "$HOME/.docker_functions" && source "$_"

################################################################################
# source any local configuration files
################################################################################
IFS=$'\n'
[[ "$SHELL" =~ "zsh" ]] && unsetopt nomatch
for I in $(/bin/ls -1 ~/.profile_* 2>/dev/null) ; do
    _interactive_log "sourcing $(basename "$I")"
    # shellcheck source=$I
    source "$I"
done
[[ "$SHELL" =~ "zsh" ]] && setopt nomatch
IFS=' '

################################################################################
# setup shell_control
################################################################################
# shellcheck source=.shell_control
source "$HOME/.shell_control" || echo "$(tput bold)error: ~/.shell_control not installed!$(tput sgr0)" >&2

################################################################################
# always assume we want our default anaconda environment
################################################################################
_interactive_log "setting up conda environment"
enterconda || true

################################################################################
# setup rvm -- must go last otherwise rvm complains about PATH
################################################################################
_interactive_log "setting up rvm"

# Workaround https://github.com/rvm/rvm/pull/4120 by unaliasing cd before rvm.
# Then re-alias cd again.
# https://github.com/sorin-ionescu/prezto/blob/master/modules/utility/init.zsh
unalias cd

# shellcheck source=.rvm/scripts/rvm
test -s "$HOME/.rvm/scripts/rvm" && source "$_"

alias cd='nocorrect cd'

fi # if $INTERACTIVE

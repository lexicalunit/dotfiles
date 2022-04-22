# .profile

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

# Export currently built PATH so the rest of this script has access to them.
if test -e /usr/libexec/path_helper; then
    eval "$($_ -s)"
else
    export PATH
    export MANPATH
fi

ARCH="$(arch)"
export ARCH

# Homebrew puts i386 binaries in /usr/local and arm64 in /opt/homebrew,
# So if we're using arm64 we need to make sure that /opt/homebrew/bin
# comes first in PATH so that the correct binaries are picked up first.
if [[ $ARCH == "arm64" ]]; then
    test -d /opt/homebrew/bin && PATH="$_:$PATH"
fi

# Make sure Homebrew utilities override system utilities.
if type brew >/dev/null 2>&1; then
    BREW_PREFIX="$(brew --prefix)"
    test -d "$BREW_PREFIX/bin" && PATH="$_:$PATH"
    test -d "$BREW_PREFIX/sbin" && PATH="$_:$PATH"

    BREW_COREUTILS_PREFIX="$BREW_PREFIX/opt/coreutils"
    if [[ -d $BREW_COREUTILS_PREFIX ]]; then
        test -d "$BREW_COREUTILS_PREFIX/libexec/gnubin" && PATH="$_:$PATH"
        test -d "$BREW_COREUTILS_PREFIX/libexec/gnuman" && MANPATH="$_:$MANPATH"
    fi

    export PATH
    export MANPATH
    export PYTHONPATH
    export BREW_PREFIX

    # ensure that brew installed `expect` functions correctly
    export TCLLIBPATH="$BREW_PREFIX/lib"

    # node version manager
    export NVM_DIR="$HOME/.nvm"
    BREW_NVM_PREFIX="$BREW_PREFIX/opt/nvm"
    if [[ -d $BREW_NVM_PREFIX && -s "$BREW_NVM_PREFIX/nvm.sh" ]]; then
        # shellcheck disable=SC1091
        source "$BREW_NVM_PREFIX/nvm.sh" --no-use
    fi

    # go compiler and environment
    GOPATH="/opt/gopath/$ARCH"
    if [[ ! -d $GOPATH ]]; then
        mkdir -p "$GOPATH"
    fi
    test -d "$GOPATH/bin" && PATH="$PATH:$_"
    test -d "$BREW_PREFIX/opt/go/libexec/bin" && PATH="$PATH:$_"
    export GOPATH
fi

# Add specific application paths, such as Python, etc...
test -d "$HOME/.cargo/bin" && PATH="$PATH:$_"
test -d "$HOME/.local/bin" && PATH="$PATH:$_"
test -d "$HOME/.log-ninja" && PATH="$PATH:$_"
test -d /usr/local/lib/pkgconfig && PKG_CONFIG_PATH="$_:$PKG_CONFIG_PATH"

# Add npm dev installed dependencies per project
PATH="node_modules/.bin:$PATH"

# Visual Studio Code
test -d "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" && PATH="$PATH:$_"

# User utilities
test -d "$HOME/bin" && PATH="$_:$PATH"

export PATH
export PYTHONPATH
export PKG_CONFIG_PATH

USER="$(whoami)"
PLATFORM="$(uname)"
export USER
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
    [ -n "$PS1" ] && [ -s "$BASE16_SHELL/profile_helper.sh" ] && eval "$("$BASE16_SHELL/profile_helper.sh")"
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
            # shellcheck disable=SC1091
            source "$(command -v virtualenvwrapper.sh)"
        fi
        export PYTHON_ENV="virtualenv"
    }

    exitvirtualenv() {
        if [[ -n $VIRTUAL_ENV ]]; then
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
        local ANACONDA_DIR_NAME="$BREW_PREFIX/Caskroom/miniconda/base"
        if [[ -z $1 ]]; then
            export ANACONDA_ROOT="$ANACONDA_DIR_NAME"
        else
            export ANACONDA_ROOT="$1"
        fi

        if [[ ! -e $ANACONDA_ROOT ]]; then
            echo "error: can not enter anaconda env at '$ANACONDA_ROOT', directory does not exist."
            return 1
        fi

        test -d "$ANACONDA_ROOT/bin" && PATH="$_:$PATH"
        test -d "$ANACONDA_ROOT/share/man" && MANPATH="$_:$MANPATH"
        export PATH
        export MANPATH
        export PYTHON_ENV="conda"

        # provide bash completion for conda
        if [[ $SHELL =~ "bash" ]]; then
            eval "$(register-python-argcomplete conda)"
        fi
    }

    exitconda() {
        if [[ -n $CONDA_DEFAULT_ENV ]]; then
            if command -v deactivate >/dev/null 2>&1; then
                # shellcheck disable=SC1091
                source deactivate
            fi
        fi

        if [[ -n $ANACONDA_ROOT ]]; then
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
    # setup editors (default to vim)
    export EDITOR=vim
    export CVSEDITOR=vim
    export XEDITOR=vim
    export IGNOREEOF=0
    alias e='vim . '
    alias edit='vim '
    ew() { type "$1" >/dev/null 2>&1 && vim "$(command -v "$1")"; }
    if type code >/dev/null 2>&1; then
        alias e='code -a . '
        alias edit='code '
        ew() { type "$1" >/dev/null 2>&1 && code "$(command -v "$1")"; }
    elif type subl >/dev/null 2>&1; then
        alias e='subl -a . '
        alias edit='subl '
        ew() { type "$1" >/dev/null 2>&1 && subl "$(command -v "$1")"; }
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

    export CHTSH_QUERY_OPTIONS="style=lovelace"

    ################################################################################
    # setup aliases and functions
    ################################################################################
    alias st='stree '
    alias bc='bc -l '
    alias profile='valgrind --tool=callgrind --dump-instr=yes --simulate-cache=yes --collect-jumps=yes '
    alias memcheck='valgrind --tool=memcheck --leak-check=yes -show-reachable=yes -fno-inline --logfile=memcheck.log '
    alias pygmentize='pygmentize -O bg=dark'
    fa() {
        local PARAMS PARAM
        for PARAM in "$@"; do
            PARAMS="${PARAMS} \"${PARAM}\""
        done
        run rg \
            --type-not svg \
            --trim \
            --sort modified \
            --smart-case \
            --pretty \
            --hidden \
            --max-columns "$(stty size | cut -d' ' -f2)" "${PARAMS}"
    }
    alias ltr='ls -l -tmodified -snew '

    if type npm >/dev/null 2>&1; then
        linked() {
            npm ls -g --depth=0 --link=true "$@" 2>/dev/null
        }
    fi

    # git shortcuts
    alias s='git s -u '

    # This ipython alias prevents `ipython notebook` from working correctly.
    # alias ipython='ipython --no-banner --no-confirm-exit '

    if type ncftp >/dev/null 2>&1; then alias ftp='ncftp '; fi
    if type share >/dev/null 2>&1; then alias shares='share '; fi
    if type htop >/dev/null 2>&1; then alias top='htop '; fi

    export RSYNC_RSH=rsh                                               # use ssh over rsync
    alias ssh='ssh -Y -C '                                             # use compression over ssh connections
    test -f "$HOME/.ssh/id_rsa" && /usr/bin/ssh-add -K >/dev/null 2>&1 # use keychain for ssh keys

    fuck() {
        if die "$1"; then
            echo
            echo " (╯°□°）╯︵$(echo "$1" | flip 2>/dev/null)"
            echo
        fi
    }

    lw() {
        local LOC
        local FINFO
        local REAL
        LOC="$(command -v "$1")"
        echo "$LOC"
        FINFO="$(file -h "$LOC")"
        if [[ $FINFO =~ "symbolic link to" ]]; then
            # shellcheck disable=SC2001
            SYLOC="$(echo "$FINFO" | sed 's@.*symbolic link to\s*\(.*\)@\1@')"
            if [[ $SYLOC != /* ]]; then
                LOC="$(dirname "$LOC")/$SYLOC"
            else
                LOC="$SYLOC"
            fi
            echo "$LOC"
            if type realpath >/dev/null 2>&1; then
                REAL="$(realpath "$LOC")"
                if [[ $REAL != "$LOC" ]]; then
                    echo "$REAL"
                fi
            fi
        fi
    }

    # shellcheck disable=SC2120
    hist() {
        if [[ $SHELL =~ "zsh" ]]; then
            if [[ -n $* ]]; then
                history 1 | grep -E "^\\s*[0-9]*\\s*.*$*.*$"
            else
                history 1
            fi
        elif [[ $SHELL =~ "bash" ]]; then
            history | grep -E "^\\s*[0-9]*\\s*.*$*.*$"
        fi
    }

    # use gnu-sed if available
    if type gsed >/dev/null 2>&1; then
        alias sed='gsed '
    fi

    # shellcheck source=.docker_functions
    # shellcheck disable=SC1091
    test -f "$HOME/.docker_functions" && source "$_"

    ################################################################################
    # source any local configuration files
    ################################################################################
    IFS=$'\n'
    [[ $SHELL =~ "zsh" ]] && unsetopt nomatch
    for I in $(/bin/ls -1 ~/.profile_* 2>/dev/null); do
        _interactive_log "sourcing $(basename "$I")"
        # shellcheck source=$I
        # shellcheck disable=SC1091
        source "$I"
    done
    [[ $SHELL =~ "zsh" ]] && setopt nomatch
    IFS=' '

    ################################################################################
    # setup shell_control
    ################################################################################
    # shellcheck source=.shell_control
    # shellcheck disable=SC1091
    source "$HOME/.shell_control" || echo "$(tput bold)error: ~/.shell_control not installed!$(tput sgr0)" >&2

    ################################################################################
    # always assume we want our default anaconda environment
    ################################################################################
    _interactive_log "setting up conda environment"
    # shellcheck disable=SC2119
    enterconda || true

    ################################################################################
    # general environment setup
    ################################################################################
    _interactive_log "setting up envrionment"

    # Override prezto's grep configuration
    alias grep='nocorrect grep --color=auto'
    export GREP_COLOR='1;35;40'

    # I hate autocorrection in CLI, disable it because prezto enables it.
    alias cd='nocorrect cd'

    # Finally setup ls to ensure we override any aliases, like from prezto.
    if type exa >/dev/null 2>&1; then
        alias ls='exa '
        alias ll='ls -lg --git --header --group-directories-first --git-ignore --time-style="long-iso" '
    else
        alias ls='ls -hF --color=auto'
        alias ll='ls -l '
    fi
    if type dircolors >/dev/null 2>&1; then
        eval "$(dircolors -b "$HOME/.dircolors" 2>/dev/null)" # sets LS_COLORS
    fi
    alias l='ls '
    export CLICOLOR=1

fi # if $INTERACTIVE

# Make sure user utilities always take precedence
test -d "$HOME/bin" && PATH="$_:$PATH"
export PATH

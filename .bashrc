# .bashrc
# shellcheck disable=SC1117

if [[ -f "$HOME/.profile" ]]; then
    # shellcheck source=.profile
    # shellcheck disable=SC1091
    source "$HOME/.profile"
fi

################################################################################
# interactive settings
################################################################################
if $INTERACTIVE; then

    # Make backspace work correctly in bash.
    stty erase '^?' eol ^@ start ^q stop ^s intr ^c

    # Bash won't get SIGWINCH if another process is in the foreground.
    # Enable checkwinsize so that bash will check the terminal size when
    # it regains control.  #65623
    # http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
    shopt -s checkwinsize

    ################################################################################
    # better terminal history for bash
    ################################################################################
    shopt -s histappend
    shopt -s histreedit
    shopt -s histverify

    # syncs bash history from all shells
    _bash_history_sync() {
        builtin history -a
        HISTFILESIZE=$HISTSIZE
        builtin history -c
        builtin history -r
    }

    # syncs history then forwards to builtin
    history() {
        _bash_history_sync
        builtin history "$@"
    }

    # for PROMPT_COMMAND, see below
    _bash_history_append() {
        builtin history -a
    }

    ################################################################################
    # setup bash completions
    ################################################################################
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
    _source_completions /usr/local/etc/bash_completion.d 2>/dev/null
    _source_completions ~/.bash_completion.d 2>/dev/null
    _source_completions /etc/bash_completion 2>/dev/null
    _source_completions ~/.bash-completion/bash_completion 2>/dev/null # git.debian.org/git/bash-completion
    _source_completions ~/.complete 2>/dev/null                        # setup env
    complete -cf sudo

    ################################################################################
    # setup command prompt
    ################################################################################
    # prints OS type
    ostype() {
        if [ -n "$OS" ]; then
            echo "$OS"
            return 0
        fi

        local OS
        local CHIP
        OS="$(uname -s)"

        case "$OS" in
        SunOS | IRIX64 | Darwin)
            CHIP="$(uname -p)"
            OS="$(uname -s)"
            ;;
        Linux | machten)
            CHIP="$(uname -m)"
            OS="$(uname -s)"
            ;;
        "Mac OS")
            CHIP="$(uname -p)"
            OS="MacOS"
            ;;
        *) CHIP="unknown" ;;
        esac

        echo "$OS-$CHIP"
        return 0
    }

    # prints python environment information
    _prompt_python_env() {
        local PROMPT_PYTHON_ENV=""
        if [[ -n $PYTHON_ENV ]]; then
            PROMPT_PYTHON_ENV=" # [$PYTHON_ENV"

            if [[ -n $VIRTUAL_ENV ]]; then
                PROMPT_PYTHON_ENV="$PROMPT_PYTHON_ENV:$(basename "$VIRTUAL_ENV")"
            elif [[ -n $CONDA_DEFAULT_ENV ]]; then
                PROMPT_PYTHON_ENV="$PROMPT_PYTHON_ENV:$CONDA_DEFAULT_ENV"
            fi

            PROMPT_PYTHON_ENV="$PROMPT_PYTHON_ENV]"
        fi
        echo -n "$PROMPT_PYTHON_ENV"
    }

    # allow user to provide override for terminal title
    title() {
        export TERMINAL_TITLE_USER="$*"
    }

    # allow user to provide override for terminal prompt note
    note() {
        export PROMPT_USER_NOTE="$*"
    }

    # prints terminal note if one is set
    _prompt_usernote() {
        if [[ -n $PROMPT_USER_NOTE ]]; then
            echo -n " #" "$PROMPT_USER_NOTE"
        fi
    }

    # prints repository information, bash only
    _prompt_repo() {
        branch=$(type __git_ps1 &>/dev/null && __git_ps1 "%s")
        if [[ -n $branch ]]; then
            vcs=git
        else
            branch=$(type -P hg &>/dev/null && hg branch 2>/dev/null)
            if [[ -n $branch ]]; then
                vcs=hg
            elif [[ -e .bzr ]]; then
                vcs=bzr
            elif [[ -e .svn ]]; then
                vcs=svn
            else
                vcs=
            fi
        fi
        if [[ -n $vcs ]]; then
            if [[ -n $branch ]]; then
                repo="$vcs: $branch"
            else
                repo="$vcs"
            fi
            echo -n " # $repo"
        fi
    }

    _prompt_command() {
        local BLUE="\[\e[0;34m\]"
        local RED="\[\e[0;31m\]"
        local BRED="\[\e[1;38;5;160m\]"
        local BGREEN="\[\e[1;32m\]"
        local BLACK="\[\e[0m\]"
        local GREY="\[\e[0;38;5;241m\]"

        # "\w" or "${PWD/#$HOME/~}" not sure what to go with...
        local TERMINAL_TITLE
        local PROMPT_LINE_1
        local PROMPT_LINE_2
        TERMINAL_TITLE="$TERMINAL_TITLE_USER$(if [[ -n $TERMINAL_TITLE_USER ]]; then printf ' '; fi)$USER@$HOST:\w"
        PROMPT_LINE_1="$RED\w${BLUE}$(_prompt_python_env)$GREY$(_prompt_repo)$BLUE$(_prompt_usernote)"
        PROMPT_LINE_2="$RED$(date +%H%M) $(ostype | sed 's/Linux-//g') \u@\h\`if [ \$? = 0 ]; then echo \"$BGREEN\$\"; else echo \"$BRED>\"; fi\`$BLACK"

        PS1="\[\e]2;\]${TERMINAL_TITLE}\a\
${PROMPT_LINE_1}\n\
${PROMPT_LINE_2} "
        PS2="> "
        PS3="#? "
        PS4="$0:$LINENO: "
    }

    export PROMPT_COMMAND='_bash_history_append; _prompt_command ' # single quotes to avoid variable expansion

    # setup fasd
    if type fasd >/dev/null 2>&1; then
        eval "$(fasd --init auto)"
    fi

    # setup fzf
    # shellcheck disable=SC1090
    [ -f ~/.fzf.bash ] && source ~/.fzf.bash

fi # if $INTERACTIVE

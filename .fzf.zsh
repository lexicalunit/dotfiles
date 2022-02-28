# Setup fzf
# ---------
FZF_ROOT=""
test -d "$BREW_PREFIX/opt/fzf/bin" && FZF_ROOT="$_"

if [[ -n $FZF_ROOT ]]; then
    export PATH="$PATH:$FZF_ROOT"

    # Auto-completion
    # ---------------
    [[ $- == *i* ]] && source "$BREW_PREFIX/opt/fzf/shell/completion.zsh" 2>/dev/null

    # Key bindings
    # ------------
    source "$BREW_PREFIX/opt/fzf/shell/key-bindings.zsh"
fi

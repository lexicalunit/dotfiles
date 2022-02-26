# Setup fzf
# ---------
FZF_ROOT=""
test -d /usr/local/opt/fzf/bin && FZF_ROOT="$_"
test -d /opt/homebrew/opt/fzf/bin && FZF_ROOT="$_"

if [[ -n $FZF_ROOT ]]; then
    export PATH="$PATH:$FZF_ROOT"

    # Auto-completion
    # ---------------
    [[ $- == *i* ]] && source "/opt/homebrew/opt/fzf/shell/completion.zsh" 2>/dev/null

    # Key bindings
    # ------------
    source "/opt/homebrew/opt/fzf/shell/key-bindings.zsh"
fi

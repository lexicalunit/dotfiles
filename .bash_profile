#! .bash_profile

SHELL="$(command -v bash)"

if [[ -f "$HOME/.profile" ]]; then
    # shellcheck source=.profile
    # shellcheck disable=SC1091
    source "$HOME/.profile"
fi

# shellcheck source=.rvm/scripts/rvm
# shellcheck disable=SC1091
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

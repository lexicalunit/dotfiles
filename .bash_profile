# .bash_profile

if [[ -f "$HOME/.profile" ]]; then
    # shellcheck source=.profile
    # shellcheck disable=SC1091
    source "$HOME/.profile"
fi

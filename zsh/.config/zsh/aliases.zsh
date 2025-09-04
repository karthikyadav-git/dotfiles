# Alias for lsd
if [[ -x "$(command -v lsd)" ]]; then
  alias ls='lsd'
  alias l='ls -l'
  alias la='ls -a'
  alias lla='ls -la'
  alias lt='ls --tree'
fi

# Alias for bat
if [[ -x "$(command -v bat)" ]]; then
  # help results in bat
  alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
  alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'
fi

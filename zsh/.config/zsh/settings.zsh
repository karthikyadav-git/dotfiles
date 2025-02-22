# We can choose to use either emacs keybindings or vim keybindings.
# Emacs is the default keybinding, which will be used if not 
# set specifically.

#bindkey -e	# set emacs keybindings
bindkey -v	# set vim keybindings

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/karthik/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# ZSH commands history settings
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=$HISTSIZE
HISTDUP=erase

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# fzf
if [[ -x "$(command -v fzf)" ]]; then

  # evaluate 'fzf' into shell
  eval "$(fzf --zsh)"

  # do not show default completion menu
  zstyle ':completion:*' menu no

  # show preview while cd
  zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

fi

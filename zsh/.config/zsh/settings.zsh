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

  # disable sort when completing `git checkout`
  zstyle ':completion:*:git-checkout:*' sort false

  # set descriptions format to enable group support
  # NOTE: don't use escape sequences (like '%F{red}%d%f') here, fzf-tab will ignore them
  zstyle ':completion:*:descriptions' format '[%d]'
  
  # set list-colors to enable filename colorizing
  zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
  
  # force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
  zstyle ':completion:*' menu no
  
  # preview directory's content with lsd or ls when completing cd
  zstyle ':fzf-tab:complete:cd:*' fzf-preview 'lsd --color=always --icon=always $realpath 2>/dev/null || ls --color=always $realpath'
  
  # custom fzf flags
  # NOTE: fzf-tab does not follow FZF_DEFAULT_OPTS by default
  zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=enter:accept
  
  # To make fzf-tab follow FZF_DEFAULT_OPTS.
  # NOTE: This may lead to unexpected behavior since some flags break this plugin. See Aloxaf/fzf-tab#455.
  zstyle ':fzf-tab:*' use-fzf-default-opts yes
  
  # switch group using `<` and `>`
  zstyle ':fzf-tab:*' switch-group '<' '>'

fi

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
SAVEHIST=1000


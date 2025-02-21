
#     ███████╗███████╗██╗  ██╗██████╗  ██████╗
#     ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#       ███╔╝ ███████╗███████║██████╔╝██║     
#      ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
#  ██╗███████╗███████║██║  ██║██║  ██║╚██████╗
#  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝


# This is the main config file for ZSH.
# Load all the other config files for ZSH here.

# Load ZSH command aliases
if [ -f ~/.config/zsh/aliases.zsh ]; then
  source ~/.config/zsh/aliases.zsh
fi

# Load user-defined functions
if [ -f ~/.config/zsh/functions.zsh ]; then
  source ~/.config/zsh/functions.zsh
fi

# Load ZSH options
if [ -f ~/.config/zsh/options.zsh ]; then
  source ~/.config/zsh/options.zsh
fi

# Load ZSH plugins
if [ -f ~/.config/zsh/plugins.zsh ]; then
  source ~/.config/zsh/plugins.zsh
fi

# Load ZSH settings
if [ -f ~/.config/zsh/settings.zsh ]; then
  source ~/.config/zsh/settings.zsh
fi

# Load ZSH theme
if [ -f ~/.config/zsh/theme.zsh ]; then
  source ~/.config/zsh/theme.zsh
fi

# Load environment variables
if [ -f ~/.config/zsh/variables.zsh ]; then
  source ~/.config/zsh/variables.zsh
fi


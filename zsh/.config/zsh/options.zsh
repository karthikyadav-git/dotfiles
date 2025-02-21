# Z SHEll provides us will various options that can be set using
# 'setopt <option_name>'
# or unset using
# 'unsetopt <option_name>
# 
# We can also leave an option to its default by not including the
# option in this file.

# Enable extended globbing
setopt EXTENDED_GLOB

# Share history across sessions
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS

# Automatically list completion options
setopt AUTO_LIST

# Automatically correct mistyped commands
setopt CORRECT

# Allow parameter expansion in the prompt
setopt PROMPT_SUBST

setopt autocd beep extendedglob nomatch notify


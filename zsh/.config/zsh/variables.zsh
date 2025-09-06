# default editor
export EDITOR=nvim
export SUDO_EDITOR=nvim

# SSH agent persists every terminal session
export SSH_AUTH_SOCK="$(echo /tmp/ssh-*/agent.*)"
export SSH_AGENT_PID="$(expr $(ls /tmp/ssh-*/ | tr -d "agent.") + 1)"

# Fcitx5 (a language input framework) configuration variables
if [[ -x "$(command -v fcitx5)" ]]; then
  export GTK_IM_MODULE=fcitx
  export QT_IM_MODULE=fcitx
  export XMODIFIERS=@im=fcitx
  export INPUT_METHOD=fcitx
fi

# fzf environment variables
if [[ -x "$(command -v fzf)" ]]; then
  export FZF_DEFAULT_OPTS="--tmux='center,70%' --style=full --prompt='-> ' --marker='>>' --preview-label=' Preview '"
fi

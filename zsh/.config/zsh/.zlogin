# INFO: This file is read only once when we log in.

# Add ssh private key to ssh-agent
if [[ -n "$SSH_AUTH_SOCK" ]]; then
    ssh-add -l &>/dev/null || ssh-add $HOME/.ssh/id_ed25519
fi


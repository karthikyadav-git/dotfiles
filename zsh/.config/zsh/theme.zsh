# We will use Starship as our theme for ZSH.

# Install Starship on our system if not already installed
if [[ ! -x "$(command -v starship)" ]]; then
  curl -sS https://starship.rs/install.sh | sh
fi

# Initialize starship
eval "$(starship init zsh)"

# Starship theme configuration file path.
# We can use this file to configure the starship theme.
export STARSHIP_CONFIG=~/.config/zsh/starship.toml

# Import preset configuration if not already present
if [[ ! -f $STARSHIP_CONFIG ]]; then
  starship preset nerd-font-symbols -o $STARSHIP_CONFIG
fi

# INFO: We will configure our ZSH prompt here

# TODO: Select your preffered Starship prompt from the list below:
# - catppuccin-mocha
# - nerd-font-symbols
PROMPT_STYLE=catppuccin-mocha



# WARNING: Contents below not to be changed

# Install Starship if not already installed and initialize

if [[ ! -x "$(command -v starship)" ]]; then
  curl -sS https://starship.rs/install.sh | sh
fi

eval "$(starship init zsh)"

# Path to directory storing prompt files
PROMPTS_DIR=$ZSHRC_DIR/prompts
PROMPT_FILE=$PROMPTS_DIR/$PROMPT_STYLE.toml

if [[ ! -f "$PROMPT_FILE"  ]]; then
  echo "Prompt Style not found!"
  starship preset nerd-font-symbols -o $PROMPTS_DIR/nerd-font-symbols.toml
  PROMPT_STYLE=nerd-font-symbols
fi

export STARSHIP_CONFIG=$PROMPT_FILE

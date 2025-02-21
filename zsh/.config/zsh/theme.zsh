# We will use Starship as our theme for ZSH.
# To set starship as our theme, we need to install starship
# from pacman by using the command:
# $ sudo pacman -S starship
# then we initialize it as our theme.
eval "$(starship init zsh)"

# Starship theme configuration file path.
# We can use this file to configure the starship theme.
export STARSHIP_CONFIG=~/.config/zsh/starship.toml


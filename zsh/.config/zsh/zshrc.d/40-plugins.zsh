# INFO: Zinit Plugin Manager

# TODO: List the plugins you want to install

plugins=(
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-completions
    zsh-users/zsh-autosuggestions
    Aloxaf/fzf-tab
    # enter your plugins here
    # git-user/git-repo
)


# WARNING: Don't edit below this line
# ---

# Setup Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Install plugins
for plugin in ${plugins[@]}; do
  zinit light $plugin
done


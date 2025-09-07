
#     ███████╗███████╗██╗  ██╗██████╗  ██████╗
#     ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#       ███╔╝ ███████╗███████║██████╔╝██║     
#      ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
#  ██╗███████╗███████║██║  ██║██║  ██║╚██████╗
#  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
# INFO: .ZSHRC modules by Karthik Yadav


# WARNING: Don't edit this file.
# ------------------------------

ZSHRC_DIR=$ZDOTDIR/zshrc.d

# Load all the other config files for ZSH here.

for config_file in $ZSHRC_DIR/*.zsh(.N); do
  source "$config_file"
done

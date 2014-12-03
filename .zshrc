# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
unsetopt correct_all

# Allow comments in interactive shell
setopt interactive_comments

source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

for file in ~/.zsh/custom/*; do
  source "$file"
done

# Load custom theme
source $HOME/.zsh/themes/hybrid.zsh-theme

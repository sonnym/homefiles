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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(npm rbenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
unsetopt correct_all

# Allow comments in interactive shell
setopt interactive_comments

source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load custom theme
source $HOME/.zsh/themes/hybrid.zsh-theme

# custom git function to increase branch command verbosity
git() { if [[ $@ == "branch" ]]; then; command git branch -vv; else; command git "$@"; fi; }

# custom rake & spring w/ binstubs
rake() { check_for_binstub "rake" "$*[1,-1"] }
spring() { check_for_binstub "spring" "$*[1,-1]" }

check_for_binstub() {
  if [[ -f "bin/$1" ]]
  then
    command "bin/$1" "$2"
  else
    command "$1" "$2"
  fi
}

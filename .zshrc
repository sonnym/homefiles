# set up nvm
source $HOME/.nvm/nvm.sh 2>/dev/null

# customizations
for file in ~/.zsh/custom/*; do
  source "$file"
done

# plugins
fpath=(~/.zsh/plugins/completions/src $fpath)

source ~/.zsh/plugins/autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/syntax-highlighting/zsh-syntax-highlighting.zsh

# custom theme
source $HOME/.zsh/themes/hybrid.zsh-theme

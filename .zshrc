# plugins
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=(~/.zsh/plugins/zsh-completions/src $fpath)

# customizations
for file in ~/.zsh/custom/*; do
  source "$file"
done

# custom theme
source $HOME/.zsh/themes/hybrid.zsh-theme

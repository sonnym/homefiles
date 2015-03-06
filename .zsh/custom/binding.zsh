bindkey -v

autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

# [CTRL-r] - history search
bindkey '\C-r' history-incremental-search-backward
bindkey '\C-s' history-incremental-search-forward

# [SHIFT-TAB] - move through completion menu backwards
bindkey "${terminfo[kcbt]}" reverse-menu-complete

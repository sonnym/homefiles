autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

# [SHIFT-TAB] - move through completion menu backwards
bindkey "${terminfo[kcbt]}" reverse-menu-complete

alias ls='ls --color=always'
alias python='python3'
alias sev='sudo -E etckeeper vcs'
alias xclip='xclip -i -selection clipboard'

function node-inspect() {
  node inspect $(which $1) ${@: (2,-1)}
}

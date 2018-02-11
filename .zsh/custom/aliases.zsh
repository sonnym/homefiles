alias ls='ls --color=always'
alias python='python3'
alias sev='sudo -E etckeeper vcs'
alias xclip='xclip -i -selection clipboard'

function npm-exec() {
  PATH=$(npm bin):$PATH $@
}
function yarn-exec() {
  PATH=$(yarn bin):$PATH $@
}

function node-inspect() {
  node inspect $(which $1) ${@: (2,-1)}
}

alias python='python3'
alias sev='sudo -E etckeeper vcs'

function npm-exec() {
  PATH=$(npm bin):$PATH $@
}
function yarn-exec() {
  PATH=$(yarn bin):$PATH $@
}


autoload -Uz vcs_info

zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
precmd () { vcs_info }

# Theme with full path names and hostname
# Handy if you work on different servers all the time;
ZSH_THEME_USER='%{$fg[cyan]%}%n%{$reset_color%}'
ZSH_THEME_HOSTNAME='%{$fg[yellow]%}%M'
ZSH_THEME_PATH='%{$fg[green]%}${PWD/#$HOME/~}%{$reset_color%}'
ZSH_THEME_RUBY='%{$fg[red]%}rb:($(rbenv_prompt_info))%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT='$(git_prompt_info)'

PROMPT="$ZSH_THEME_USER@$ZSH_THEME_HOSTNAME:$ZSH_THEME_PATH $ZSH_THEME_RUBY$ZSH_THEME_GIT %(!.#.$) "

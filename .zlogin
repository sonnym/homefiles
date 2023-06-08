# paths
export GOPATH=$HOME/.golib
export PYENV_ROOT=$HOME/.pyenv

export PATH=$HOME/usr/bin:$HOME/.pyenv/bin:$HOME/.rbenv/bin:$HOME/.cargo/bin:$GOPATH/bin:$PATH
export MANPATH=$HOME/usr/share/man:$MANPATH

# set up pyenv
eval "$(pyenv init -)"

# set up rbenv
eval "$(rbenv init -)"

# override ls colors
eval "$(dircolors --bourne-shell &>/dev/null)"

# configure time output
export TIMEFMT=$'\nreal\t%*E\nuser\t%*U\nsys\t%*S'

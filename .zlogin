# paths
export GOPATH=$HOME/.golib

export PATH=$HOME/usr/bin:$HOME/.rbenv/bin:$HOME/.cargo/bin:$GOPATH/bin:$PATH
export MANPATH=$HOME/usr/share/man:$MANPATH

# set up rbenv
eval "$(rbenv init -)"

# override ls colors
eval "$(dircolors --bourne-shell &>/dev/null)"

# configure time output
export TIMEFMT=$'\nreal\t%*E\nuser\t%*U\nsys\t%*S'

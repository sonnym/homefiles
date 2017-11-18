# paths
export GOPATH=$HOME/.golib

export PATH=$HOME/usr/bin:$HOME/.rbenv/bin:$HOME/.elmenv/bin:$HOME/.cargo/bin:$GOPATH/bin:$PATH
export MANPATH=$HOME/usr/share/man:$MANPATH

# set up rbenv
eval "$(rbenv init -)"

# set up elmenv
eval "$(elmenv init -)"

# override ls colors
eval "$(dircolors --bourne-shell &>/dev/null)"

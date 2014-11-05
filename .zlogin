# set up rbenv
eval "$(rbenv init -)"

# paths
export GOPATH=$HOME/.golib
export PYTHONPATH=$HOME/usr/lib/python2.7/site-packages

export PATH=$HOME/usr/bin:$HOME/.rbenv/bin:$HOME/src/go/bin:$GOPATH:$HOME/.cabal/bin:$PATH
export MANPATH=$HOME/usr/share/man:$MANPATH

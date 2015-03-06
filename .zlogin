# paths
export GOPATH=$HOME/.golib
export PYTHONPATH=$HOME/usr/lib/python3.4/site-packages

export PATH=$HOME/usr/bin:$HOME/.rbenv/bin:$HOME/src/go/bin:$GOPATH:$HOME/.cabal/bin:$PATH
export MANPATH=$HOME/usr/share/man:$MANPATH

# set up rbenv
eval "$(rbenv init -)"

# set up nvm
source $HOME/.nvm/nvm.sh

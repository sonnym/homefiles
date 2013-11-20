# set up ssh keys
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
  /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
  chmod 600 "${SSH_ENV}"
  . "${SSH_ENV}" > /dev/null
  /usr/bin/ssh-add ~/.ssh/dsa ~/.ssh/rsa ~/.ssh/aws-access-sonny.pem ~/.ssh/cloudfront-access-sonny.pem;
}

if [ -f "${SSH_ENV}" ]; then
  . "${SSH_ENV}" > /dev/null
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
	  start_agent;
	}
else
  start_agent;
fi

# set up rbenv
eval "$(rbenv init -)"

# paths
export GOPATH=$HOME/.golib
export PYTHONPATH=$HOME/usr/lib/python2.7/site-packages

export PATH=$HOME/usr/bin:$HOME/.rbenv/bin:$HOME/src/go/bin:$GOPATH:$HOME/.cabal/bin:$PATH
export MANPATH=$HOME/usr/share/man:$MANPATH

# start x server if local connection
SSH=`env | grep SSH_CONNECTION`
if [ -z "$SSH" ]; then
   if [ -z $DISPLAY ]; then
       startx
   fi
fi

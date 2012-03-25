# 2010.02.02 => http://help.github.com/working-with-key-passphrases/
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
  /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
  chmod 600 "${SSH_ENV}"
  . "${SSH_ENV}" > /dev/null
  /usr/bin/ssh-add ~/.ssh/dsa ~/.ssh/rsa ~/.ssh/aws-access-sonny.pem ~/.ssh/cloudfront-access-sonny.pem;
}

# Source SSH settings, if applicable
if [ -f "${SSH_ENV}" ]; then
  . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
	  start_agent;
	}
else
  start_agent;
fi

PATH=$PATH:~/bin;export PATH
MANPATH=$MANPATH:~/share/man;export MANPATH

# 2010.10.03
#KDEWM=/usr/bin/awesome;export KDEWM

#####
SSH=`env | grep SSH_CONNECTION`
#RUNLEVEL=`runlevel | cut -f2 -d' '`
if [ -z "$SSH" ]; then
   if [ -z $DISPLAY ]; then
       startx
   fi
fi

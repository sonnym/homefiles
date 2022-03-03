export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

function _check_for_and_source_nvmrc {
  if [[ -e ".nvmrc" ]]
  then
    nvm use 1>/dev/null
  else
    [[ "$(nvm current)" != "none" ]] && nvm deactivate &>/dev/null
  fi
}

chpwd_functions+=(_check_for_and_source_nvmrc)

_check_for_and_source_nvmrc

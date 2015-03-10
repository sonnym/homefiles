function _check_for_and_source_nvmrc {
  if [[ -e ".nvmrc" ]]
  then
    nvm use 1>/dev/null
  else
    [[ "$(nvm current)" != "none" ]] && nvm deactivate 1>/dev/null
  fi
}

chpwd_functions+=(_check_for_and_source_nvmrc)

_check_for_and_source_nvmrc

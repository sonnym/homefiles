export VIRTUAL_ENV_DISABLE_PROMPT='1'

function _check_for_and_source_venv {
  VENV_FILE='venv/bin/activate'

  if [[ -e $VENV_FILE ]]
  then
    source $VENV_FILE
  else
    [[ -e `env | grep VIRTUAL_ENV` ]] && deactivate
  fi
}

chpwd_functions+=(_check_for_and_source_venv)

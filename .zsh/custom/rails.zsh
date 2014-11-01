# custom rake & spring w/ binstubs
rake() { check_for_binstub "rake" "$*[1,-1"] }
spring() { check_for_binstub "spring" "$*[1,-1]" }

check_for_binstub() {
  if [[ -f "bin/$1" ]]
  then
    command "bin/$1" "$2"
  else
    command "$1" "$2"
  fi
}

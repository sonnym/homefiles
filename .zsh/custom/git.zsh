# custom git function to increase branch command verbosity
git() { if [[ $@ == "branch" ]]; then; command git branch -vv; else; command git "$@"; fi; }

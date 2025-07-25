#!/usr/bin/env bash

missing=0

programs=(
"stow"
"zsh"
"bat"
"fzf"
"btop"
"yazi"
"tmux"
"fd"
"hx"
"ugrep"
"nvim"
)

for prog in "${programs[@]}"; do
  if ! command -v "$prog" >/dev/null 2>&1; then
    echo "$prog is not installed"
    missing=1
  else
    echo "$prog is installed"
  fi
done

exit $missing

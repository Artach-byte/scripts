#!/usr/bin/env bash

missing=0

programs=(
"stow"
"zsh"
"bat"
"fzf"
"starship"
"atuin"
"btop"
"yazi"
"zellij"
"rg" # ripgrep
"tmux"
"fd"
"hx" # helix editor
"ugrep"
"zoxide"
"zed" # gui zed editor
)

for prog in "${programs[@]}"; do
  if ! command -v "$prog" >/dev/null 2>&1; then
    echo "$prog is NOT installed"
    missing=1
  fi
done

exit $missing

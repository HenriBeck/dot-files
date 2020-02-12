#!/usr/bin/env bash

# shopt -s expand_aliases

for file in ~/.{bash_exports,bash_aliases,bash_functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

autoload -U promptinit; promptinit
prompt pure

# fnm
export PATH=$HOME/.fnm:$PATH
eval "`fnm env --multi`"

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

# FNM
export PATH=/Users/henri.beck/.fnm/current/bin:$PATH
export FNM_MULTISHELL_PATH=/Users/henri.beck/.fnm/current
export FNM_DIR=/Users/henri.beck/.fnm
export FNM_NODE_DIST_MIRROR=https://nodejs.org/dist

# Flutter
export PATH="$PATH:/Users/henri.beck/flutter/bin"

# GRPC
export PATH=$PATH:$HOME/.pub-cache/bin
export PATH=$PATH:$HOME

# Android studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

__fnmcd() {
  cd $@

  if [[ -f .node-version && .node-version ]]; then
    fnm use
  elif [[ -f .nvmrc && .nvmrc ]]; then
    fnm use
  fi
}

alias cd=__fnmcd

fnm use 10

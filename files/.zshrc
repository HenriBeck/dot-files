#!/usr/bin/env bash

for file in ~/.{zsh_exports,zsh_aliases,zsh_functions,zsh_options}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# Add the zsh pure prompt theme to the path
fpath+=$HOME/.zsh/pure

autoload -Uz promptinit
promptinit
prompt pure

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

# Homebrew support for M1
if [ -d "/opt/homebrew/bin" ]; then
  eval $(/opt/homebrew/bin/brew shellenv)
fi

# https://github.com/Schniz/fnm
if [ -d "$HOME/.fnm" ]; then
  export FNM_DIR=$HOME/.fnm
  export FNM_MULTISHELL_PATH=$FNM_DIR/current
  export PATH=$FNM_DIR:$FNM_DIR/current/bin:$PATH
  export FNM_NODE_DIST_MIRROR=https://nodejs.org/dist
  
  eval "$(fnm env)"
  fnm use default

  __fnmcd() {
    cd $@

    if [[ -f .node-version && .node-version ]]; then
      fnm use
    elif [[ -f .nvmrc && .nvmrc ]]; then
      fnm use
    fi
  }

  alias cd=__fnmcd
fi

# Rust
if [ -d "$HOME/.cargo" ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

# Flutter
if [ -d "$HOME/flutter" ]; then
  export PATH="$HOME/flutter/bin:$PATH"
  export PATH="$HOME/.pub-cache/bin:$PATH"
fi

# Android studio
if [ -d "$HOME/Library/Android" ]; then 
  export ANDROID_HOME=$HOME/Library/Android/sdk
  export PATH=$PATH:$ANDROID_HOME/emulator
  export PATH=$PATH:$ANDROID_HOME/tools
  export PATH=$PATH:$ANDROID_HOME/tools/bin
  export PATH=$PATH:$ANDROID_HOME/platform-tools
fi

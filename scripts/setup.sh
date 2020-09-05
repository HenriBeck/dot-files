#!/usr/bin/env bash

# Copy all files from the files directory into the home directory
cp -R $(pwd)/files/. $HOME

# Initialize zsh dir
mkdir -p "$HOME/.zsh"
# Copy over the pure prompt theme
cp -R $(pwd)/zsh_themes/pure "$HOME/.zsh"


#!/bin/bash

source $HOME/dev_config/scripts/functions.sh

# Run Homebrew setup
./homebrew/setup.sh

# Run Neovim setup
./neovim/setup.sh

# Run Node.js setup
./node/setup.sh

# TODO: This should be part of the Ruby setup file.
if [[ ! "$(gem list)" =~ "neovim" ]]; then
  printf "Installing the Neovim Ruby Gem:\n"
  gem install neovim
fi

# TODO: This should be somewhere else; but I'm putting it here for now. :P
project_dir=~/Projects

for directory in $(ls $project_dir); do
  if [[ -d $project_dir/$directory ]] && [[ -d $project_dir/$directory/.git ]]; then
    cd $project_dir/$directory
    git checkout master
    git fetch --all
    git pull
  fi
done

cd ~

# TODO: Temp patch to get manifold-cli installed in macOS Mojave.
# This should go into some sort of Manifold setup script
# (or just be installed with homebrew again)
if ! is_executable "manifold"; then
  MANIFOLD_DIR=~
  curl -o- https://raw.githubusercontent.com/manifoldco/manifold-cli/master/install.sh | sh
fi

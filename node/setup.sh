#!/bin/bash

source $HOME/dev_config/scripts/functions.sh

printf "Running the Node.js setup script.\n\n"

# make sure that Node is installed
if [ ! $(is_executable "node") ]; then
  printf "Node must be installed to run this script. aborting.\n"
  printf "please run the homebrew setup script to install Node.\n"
  exit 1
fi

# make sure that NPM is installed
if [ ! $(is_executable "npm") ]; then
  printf "NPM must be installed to run this script. aborting.\n"
  printf "please run the homebrew setup script to install NPM.\n"
  exit 1
else
  # Update the NPM!
  npm i npm@latest -g
fi

# set up NVM
if [[ ! -d ~/.nvm ]]; then
  mkdir ~/.nvm
fi

if [ ! $(is_executable "nvm") ]; then
  brew install nvm
else
  brew upgrade nvm
fi

# Install plugins
./node/plugins.sh

printf "Finished running the Node.js setup script.\n\n"

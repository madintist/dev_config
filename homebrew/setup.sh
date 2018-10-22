#!/bin/bash

source $HOME/dev_config/scripts/functions.sh

printf "Running Homebrew setup script.\n\n"

# The installation directory for Homebrew
homebrew_directory=~/homebrew

# The URL of the Homebrew installer script
homebrew_url="https://github.com/Homebrew/brew/tarball/master"

# Is Homebrew installed already?
if ! is_executable "brew"; then
  # If not we need to set it up.

  # Delete old $homebrew_directory if it's already there.
  if [[ -d "$homebrew_directory" ]]; then
    rm -rf "$homebrew_directory"
  fi

  # Install Homebrew to $homebrew_directory
  mkdir "$homebrew_directory" && curl -L "$homebrew_url" | tar xz --strip 1 -C "$homebrew_directory"
fi

# Install Homebrew plugins (a.k.a packages)
./homebrew/plugins.sh

printf "Finished with Homebrew setup script.\n\n"

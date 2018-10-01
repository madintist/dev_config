#!/bin/bash

# Get the globally installed node modules
npm_plugins="$(npm ls -g --depth=0)"

# File that we keep the list of plugins in
plugin_file=~/dev_config/node/plugins.txt

# Array of plugins that should be installed
plugin_list=()

# Load list of plugins into an array
get_plugin_list () {
  while IFS= read -r plugin; do
    plugin_list+=("$plugin")
  done < "$plugin_file"
}

# Install and / or update the NPM modules
load_plugins () {
  for plugin in "${plugin_list[@]}"; do
    if [[ ! "$npm_plugins" =~ "$plugin" ]]; then
      printf "Installing $plugin NPM package:\n"
      npm i "$plugin" -g
    else
      printf "Updating $plugin NPM package:\n"
      npm update "$plugin" -g
    fi
  done
}

printf "Loading global NPM packages.\n\n"
get_plugin_list
load_plugins
printf "Finished loading global NPM packages.\n\n"

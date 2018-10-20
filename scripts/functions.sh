#!/bin/bash

# This function will check for
# an executable's existence
# $1 - The name of the executable to check for
is_executable () {
  exit_code=0

  command -v "$1" > /dev/null 2>&1

  if [[ ! "$?" -eq 0 ]]; then
    exit_code=1
  fi

  return $exit_code
}

# TODO: read_plugin_file Function to read a .txt plugin file

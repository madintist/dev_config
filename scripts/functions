#!/bin/bash

# Returns 0 if the executable exists,
# else returns 1 
# $1 - The name of the executable to check for
is_executable () {
  command -v "$1" >/dev/null 2>&1

  if [[ ! "$?" -eq 0 ]]; then
    return 1
  else
    return 0
  fi
}

# TODO: read_plugin_file Function to read a .txt plugin file

# Dev Config

Configuration files for my developer environment. Currently WIP.

## Setup

Run `./setup` to symlink the config files into their proper places.

## Scripts

These are the root scripts in this repo:

- `./setup`
  - Runs all config scripts, adds system symlinks, etc.

## Configuration

Here's a guide to the configuration / changing things:

### GPG / PGP

**TODO**

I need to add documentation and/or automate this section.

### Homebrew

#### Files

- `./homebrew/plugins.txt`
  - This file contains a list of all the Homebrew plugins that we want to have installed.
  - Each plugin is on it's own line in the following format:
    - `[plugin name] -- [optional post-install script]`

#### Scripts

- `./homebrew/plugins`
  - This will update Homebrew and install any plugins that haven't been installed yet.
- `./homebrew/setup`
  - This will install, update, and clean Homebrew.
  - It will install any plugins listed in `./homebrew/plugins.txt`

### Neovim

#### Files

- `./neovim/plugins.txt`
  - This is a list of plugins to install in Neovim.
  - Each plugin is on it's own line in the following format:
    - `[username]/[repository] -- [optional post-install script]`

#### Scripts

- `./neovim/plugins`
  - This will install and / or update all the Neovim plugins.
- `./neovim/setup`
  - This will do the initial setup for Neovim.
  - It will also run the `./neovim/plugins` script.

### Node.js

#### Scripts

- `./node/setup`
  - This will do the initial Node.js setup.

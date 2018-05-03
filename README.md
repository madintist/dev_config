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

### Homebrew

#### Files

- `./homebrew/packages.txt`
  - This file contains a list of all the Homebrew packages that we want to have installed.
  - To add a new package to Homebrew add the name of the package as a new line to this file. Then run the Homebrew setup script to install it.

#### Scripts

- `./homebrew/plugins`
  - This will update Homebrew and install any packages that haven't been installed yet.
- `./homebrew/setup`
  - This will install, update, and clean Homebrew.
  - It will install any packages listed in `./homebrew/packages.txt`

### Neovim

#### Scripts

- `./neovim/plugins`
  - This will install and / or update all the Neovim plugins.
- `./neovim/setup`
  - This will do the initial setup for Neovim.
  - It will also run the `./neovim/plugins` script.

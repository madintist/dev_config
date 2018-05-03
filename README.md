# Dev Config

Configuration files for my developer environment. Currently WIP.

## Setup

Run `./setup` to symlink the config files into their proper places.

## Scripts

- `./setup`
  - Runs all config scripts, adds system symlinks, etc.
- `./homebrew/plugins`
  - This will update Homebrew and install any packages that haven't been installed yet.
- `./homebrew/setup`
  - This will install, update, and clean Homebrew.
  - It will install any packages listed in `./homebrew/packages.txt`
- `./neovim/plugins`
  - This will install and / or update all the Neovim plugins.
- `./neovim/setup`
  - This will do the initial setup for Neovim.
  - It will also run the `./neovim/plugins` script.

## Configuration

Here's a guide to the configuration / changing things:

### Homebrew

Homebrew packages that we want to have installed are listed in `./homebrew/packages.txt`. Add the name of the Homebrew package as a new line in the text file and run the Homebrew setup script to install it.

## TODO

List of things that I need to add.

- [ ] Git
- [ ] PHP / Composer
- [ ] Zsh / Oh-My-Zsh

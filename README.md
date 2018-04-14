# Dev Config

Configuration files for my developer environment. Currently WIP.

## Prerequisites

You must have the following installed to use this config:

- [Homebrew](https://brew.sh/)

## Setup

Run `./setup` to symlink the config files into their proper places.

## Contents

- [Git](https://git-scm.com/)
  - Will install via Homebrew if it's not available
  - [ ] **TODO:** Automate Git configuration
- [Neovim](https://neovim.io/)
  - `./Neovim/init.vim`
  - Will be symlinked to `~/.config/nvim/init.vim`
  - Will install [Pathogen](https://github.com/tpope/vim-pathogen)
  - Will install the following plugins:
    - [Mundo](https://github.com/simnalamburt/vim-mundo)
      - Undo tree visualization. Like Gundo, but works with Neovim.
    - [Solarized](https://github.com/altercation/vim-colors-solarized)
      - Color scheme. I use the dark variation.

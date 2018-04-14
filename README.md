# Dev Config

Configuration files for my developer environment. Currently WIP.

## Prerequisites

You must have the following installed to use this config:

- [Homebrew](https://brew.sh/)

## Setup

Run `./setup` to symlink the config files into their proper places.

## Scripts

- `./Neovim/update_plugins`
  - This will pull the most recent version of all Neovim plugins.

## Contents

- [Ag - The Silver Searcher](https://geoff.greer.fm/ag/)
  - Much better than `ack` or `grep`.
- [Git](https://git-scm.com/)
  - Will install via Homebrew if it's not available.
  - [ ] **TODO:** Automate Git configuration.
- [Neovim](https://neovim.io/)
  - `./Neovim/init.vim`.
  - Will be symlinked to `~/.config/nvim/init.vim`.
  - Will install [Pathogen](https://github.com/tpope/vim-pathogen).
  - Will install the following plugins:
    - [Ack](https://github.com/mileszs/ack.vim)
      - Enhanced searching.
      - This will be configured to use `ag` as the search executable in place of `ack`.
    - [CtrlP](http://ctrlpvim.github.io/ctrlp.vim/)
      - Fuzzy finder for files, buffers, tags, etc.
    - [GitGutter](https://github.com/airblade/vim-gitgutter)
      - Show the Git diff in the gutter.
    - [Mundo](https://github.com/simnalamburt/vim-mundo)
      - Undo tree visualization. Like Gundo, but works with Neovim.
    - [Polyglot](https://github.com/sheerun/vim-polyglot)
      - Basically every language pack you'll ever need. Except for Io.
    - [Solarized](https://github.com/altercation/vim-colors-solarized)
      - Color scheme. I use the dark variation.
    - [Syntastic](https://github.com/vim-syntastic/syntastic)
      - Syntax checking.
    - [YouCompleteMe](http://valloric.github.io/YouCompleteMe/)
      - Code completion engine.
      - Will install with additional JavaScript support

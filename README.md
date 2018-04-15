# Dev Config

Configuration files for my developer environment. Currently WIP.

## Prerequisites

You must have the following installed to use this config:

- [Homebrew](https://brew.sh/)

## Setup

Run `./setup` to symlink the config files into their proper places.

## Scripts

- `./Neovim/plugins`
  - This will install and / or update all the Neovim plugins.

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
    - [ALE](https://github.com/w0rp/ale)
      - Async linting.
      - **TODO:** Configure.
    - [CtrlP](http://ctrlpvim.github.io/ctrlp.vim/)
      - Fuzzy finder for files, buffers, tags, etc.
    - [Emmet](http://emmet.io/)
      - HTML autocomplete on a new level.
    - [GitGutter](https://github.com/airblade/vim-gitgutter)
      - Show the Git diff in the gutter.
    - [Mundo](https://github.com/simnalamburt/vim-mundo)
      - Undo tree visualization. Like Gundo, but works with Neovim.
    - [Polyglot](https://github.com/sheerun/vim-polyglot)
      - Basically every language pack you'll ever need. Except for Io.
    - [Solarized](https://github.com/altercation/vim-colors-solarized)
      - Color scheme. I use the dark variation.
    - [YouCompleteMe](http://valloric.github.io/YouCompleteMe/)
      - Code completion engine.
      - Will install with additional JavaScript support
    - **TODO:**
      - Install `vim-prettier`. This requires Node.js / NPM to be set up.

# Dev Config

Configuration files for my developer environment.

## Files

### Neovim

**NOTE:** Neovim must be installed before setup.
Run `$ brew install neovim` if necessary.

- `./nvim/init.vim`: Neovim config file.

#### Setup

1. Run `$ ln -s "$PWD"/nvim/init.vim ~/.config/nvim/init.vim`
2. Open Neovim and run `:PlugInstall`

### Tmux

**NOTE:** Tmux must be installed for this to make any sense.
Run `$ brew install tmux` to get Tmux.

- `./tmux/tmux.conf`: Tmux config file.

#### Setup

1. Run `$ ln -s "$PWD"/tmux/tmux.conf ~/.tmux.conf`

### Zsh

See info on installing Zsh [here][installing-zsh].

#### Setup

1. Link `.zshrc`: `$ ln -s "$PWD"/zsh/zshrc ~/.zshrc`

**Warning:** The current `.zshrc` assumes that you have a few other tools already installed.
Documentation on those will be forthcoming. Here's a summary:

- fzf (terminal fuzzy finder)
- Google Cloud SDK
- NVM (Node Version Manager)
- Powerline
- Z (Jump to frecent directories)
- ZSH syntax highlighting script

We also need docs for setting up `.zshenv` since that won't be added here.

ADDING SOME TEST TEXT TO SEE IF SIGNING WORKS

[installing-zsh]: https://gist.github.com/derhuerst/12a1558a4b408b3b2b6e#file-mac-md

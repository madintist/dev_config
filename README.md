# Dev Config

Configuration files for my developer environment.

## Files

### Neovim

**NOTE:** Neovim must be installed before setup.
Run `$ brew install neovim` if necessary.

- `./nvim/init.vim`: Neovim config file.

#### Setup

1. Run `$ ln -s ./nvim/init.vim ~/.config/nvim/init.vim`
2. Open Neovim and run `:PlugInstall`

### Tmux

**NOTE:** Tmux must be installed for this to make any sense.
Run `$ brew install tmux` to get Tmux.

- `./tmux/tmux.conf`: Tmux config file.

#### Setup

1. Run `$ ln -s ./tmux/tmux.conf ~/.tmux.conf`

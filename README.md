# My Neovim Config

This is my neovim config.

## Setup

To setup, first install neovim. Then clone this repository into the neovim
config directory. You can find this directory by opening neovim and then typing:

```
:h rtp
```

Next, install Packer and ensure npm is installed. This can be easily done using
the setup script:

```
source setup.sh
```

Finally, open up neovim and install everything with packer.

```
:PackerSync
```

## Additional Steps

You may want to add an alias to open neovim.

Add the following line to your .bashrc/.zshrc:

```
alias vim='nvim'
```

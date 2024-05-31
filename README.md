# My Neovim Config

This is my neovim config.

## Prerequisites

Ensure an up-to-date version of npm is installed.

## Setup

To setup, first install neovim. Then clone this repository into the neovim
config directory. You can find this directory by opening neovim and then typing:

```
:h rtp
```

The config directory will likely be `~/.config/nvim`.

Change into your neovim config directory and clone this repository. Then run the
setup script to install Packer.

```
cd ~/.config
git clone https://github.com/DevanTurtle7/nvim
cd nvim
source setup.sh
```

Finally, open up neovim and install everything with packer.

```
:PackerSync
```

### Additional Steps

You may want to add an alias to open neovim.

Add the following line to your .bashrc/.zshrc:

```
alias vim='nvim'
```

### Linux Troubleshooting

If you run in to issues with treesitter on Linux, you may need to specify the compiler.
To fix, add the following lines to `after/plugin/treesitter.lua`:

```lua
require'nvim-treesitter.install'.compilers = {
      "gcc"
}
```

You can change `gcc` to be any C compiler such as `clang`, `cc`, or `zig`.

## Favorite Motions
| Key(s) | Description |
|--------|-------------|
| `#` | Jump to previous occurrance of word under cursor |
| `*` | Jump to next occurrance of word under cursor |
| `^` | Move cursor to the start of the current line |
| `$` | Move cursor to the end of the current line |
| `{` | Jump to previous empty line |
| `}` | Jump to next empty line |
| `g` `g` | Jump to top of the file |
| `G` `G` | Jump to end of the file |
| `g` `d` | Jump to function definition |
| `z` `z` | Center screen to cursor |
| `[` `c` | Jump to previous git change (vim-gitgutter) |
| `]` `c` | Go to the next recent git change (vim-gitgutter) |
| `g` `h` `p` | View git change (vim-gitgutter) |
| `Ctrl` `u` | Move up several lines |
| `Ctrl` `d` | Move down several lines |
| `Ctrl` `V` then `j`/`k` then `I` then `esc` | Visual block mode. Change the start of multiple lines |
| `Ctrl` `V` then `j`/`k` then `x` then `esc` | Visual block mode. Delete character from multiple lines |

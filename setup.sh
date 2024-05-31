#!/bin/bash

bold="\033[1m"
normal="\033[0m"

function print_line() {
    echo "\n${bold}$1${normal}"
}

print_line "Installing packer..."
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

print_line "\nNPM Version:"
npm --version

print_line "Done"

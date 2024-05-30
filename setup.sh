#!/bin/bash

bold="\033[1m"
normal="\033[0m"

function print_line() {
    echo "\n${bold}$1${normal}"
}

print_line "Installing packer..."
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

print_line "Installing airblade..."
mkdir -p pack/airblade/start/
cd pack/airblade/start/
git clone https://github.com/airblade/vim-gitgutter
cd ../../..

print_line "Installing vim_illuminate..."
mkdir -p pack/rrethy/start/
cd pack/rrethy/start/
git clone https://github.com/RRethy/vim-illuminate
cd ../../..

print_line "\nNPM Version:"
npm --version

print_line "Done"

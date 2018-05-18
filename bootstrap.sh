#!/usr/bin/env bash

################################################################################
############################# BOOTSTRAP NEW SERVER #############################
################################################################################
#                                                                              #
#							      ___           ___           ___                            #
#							     /  /\         /__/\         /  /\                           #
#							    /  /::\       |  |::\       /  /:/_                          #
#							   /  /:/\:\      |  |:|:\     /  /:/ /\                         #
#							  /  /:/  \:\   __|__|:|\:\   /  /:/_/::\                        #
#							 /__/:/ \__\:\ /__/::::| \:\ /__/:/__\/\:\                       #
#							 \  \:\ /  /:/ \  \:\~~\__\/ \  \:\ /~~/:/                       #
#							  \  \:\  /:/   \  \:\        \  \:\  /:/                        #
#							   \  \:\/:/     \  \:\        \  \:\/:/                         #
#							    \  \::/       \  \:\        \  \::/                          #
#							     \__\/         \__\/         \__\/                           #
#                                                                              #
################################################################################
### Install Linuxbrew
#   Source: http://linuxbrew.sh/
#   Dependencies: build-essential curl file git python-setuptools
#   Paste at a Terminal prompt:
git clone https://github.com/Linuxbrew/brew.git ~/.linuxbrew
#   add Linuxbrew to your PATH:
test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
test -r ~/.bash_profile && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bash_profile
echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.profile
echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.zshrc
git -C "$(brew --repo homebrew/core)" fetch --unshallow
################################################################################
### install zsh environment:
brew install

################################################################################
### Install standard packages:

PACKAGES=(
  zsh
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
  antigen
  nano
  caddy
  ffmpeg
  nload
  parallel
  rclone
  tree
)

brew install
youtube-dl ncdu asciinema

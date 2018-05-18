################################################################################
## This .zshrc is configured for use with antigen and the powerlevel9k theme. ##
################################################################################
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
## Check out everything else: https://github.com/The-OMG/orionsbelt
#
## Linuxbrew: http://linuxbrew.sh/
#
## No root required.
#
## Tested on: https://ultraseedbox.com/
#             https://cloud.google.com/compute/
#             https://www.digitalocean.com/
#
## Tested on: Debian 8,9
#             Ubuntu 16.04 - 18.04
#
## Requires zsh to be installed prior to this file being installed.
## Needs Antigen installed with linuxbrew.
## If you dont have root access, install zsh and antigen with linuxbrew.

################################################################################
## Pre-antigen settings

# Force 256color
export TERM="xterm-256color"

# This directory is used to store all the repo clones, your bundles, themes, caches and everything else Antigen requires to run smoothly
# ADOTDIR=$HOME/.antigen

# Use this configuration to define where Antigen should store log information.
# ANTIGEN_LOG=/path/to/antigen.log

# This configures the path to the cache init file, where Antigen stores it's cached bundles. true/false
# ANTIGEN_CACHE=false

################################################################################
## Initalize antigen
# Install Antigen with "brew install antigen"

# Source your antigen install from brew
source $HOME/.linuxbrew/share/antigen/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh)
antigen bundle git
antigen bundle zsh_reload
antigen bundle colorize

# Fish-like auto suggestions
antigen bundle zsh-users/zsh-autosuggestions

# Extra zsh completions
antigen bundle zsh-users/zsh-completions

# Auto-ls https://github.com/desyncr/auto-ls
antigen bundle desyncr/auto-ls

# betterbrew https://github.com/timothyrowan/betterbrew-zsh-plugin
antigen bundle timothyrowan/betterbrew-zsh-plugin

# https://github.com/MikeDacre/careful_rm
antigen bundle MikeDacre/careful_rm

# completion-generator https://github.com/RobSis/zsh-completion-generator
antigen bundle RobSis/zsh-completion-generator

# zsh-syntax-highlighting
antigen bundle zdharma/fast-syntax-highlighting

# Linuxbrew https://github.com/zpm-zsh/linuxbrew
antigen bundle zpm-zsh/linuxbrew

# Morpho https://github.com/psprint/zsh-morpho
antigen bundle psprint/zsh-morpho

# navigation-tools https://github.com/psprint/zsh-navigation-tools
antigen bundle psprint/zsh-navigation-tools

# Revolver https://github.com/molovo/revolver
antigen bundle molovo/revolver

# tailf https://github.com/rummik/zsh-tailf
antigen bundle rummik/zsh-tailf

# tmux https://github.com/sharktamer/zsh-tmux
antigen bundle sharktamer/zsh-tmux

# tmux rename https://github.com/sei40kr/zsh-tmux-rename
antigen bundle sei40kr/zsh-tmux-rename

# youtube-dl https://github.com/joow/youtube-dl
antigen bundle joow/youtube-dl

# homebrew completions https://github.com/vasyharan/zsh-brew-services
antigen bundle vasyharan/zsh-brew-services

#######################################################################################################
## Powerlevel9k

# Install Powerlevel9k theme
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

# Powerlevel9k custom prompt segments:
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  'status'
  'os_icon'
  'context'
  'dir_writable'
  'dir'
  'rbenv'
  'vcs'
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  'nvm'
  'rvm'
  'load'
  'ram_joined'
  'history'
  'time'
)

# Puts a newline in your prompt so you can continue using segments on the next line.
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true


# Apply Powerlevel9k theme
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

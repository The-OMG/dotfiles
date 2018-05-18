################################################################################
#### This .profile makes your login shell "zsh" instead of "bash" or "sh". #####
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
## If you dont have root access, install zsh with linuxbrew from linuxbrew.sh
################################################################################

export SHELL=/bin/zsh

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private linuxbrew bin if it exists
if [ -d "$HOME/.linuxbrew/bin" ] ; then
    PATH="$HOME/.linuxbrew/bin:$PATH"
fi

# set PATH so it includes user's private linuxbrew sbin if it exists
if [ -d "$HOME/.linuxbrew/sbin" ] ; then
    PATH="$HOME/.linuxbrew/sbin:$PATH"
fi

#export PATH='$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin':"$PATH"
exec zsh

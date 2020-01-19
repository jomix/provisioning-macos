#!/bin/bash


#turn on ssh server
sudo systemsetup -setremotelogin on
#show ssh server
sudo systemsetup -getremotelogin
#turn on screen sharing for all users
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -allowAccessFor -allUsers -privs -all -clientopts -setmenuextra -menuextra yes


#install homebrew
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile
    brew doctor
else
    brew update
fi


#install bundle
brew bundle


#put z in path
echo "
if command -v brew >/dev/null 2>&1; then
	# Load rupa's z if installed
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi
" >> ~/.bash_profile

#!/bin/bash


#turn on ssh server
sudo systemsetup -setremotelogin on
#show ssh server
sudo systemsetup -getremotelogin


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



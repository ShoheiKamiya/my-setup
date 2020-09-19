#!/bin/bash

# Exit when xcode is not installed
if ! which -s xcode-select; then
  echo 'ERROR: Xcode is not installed. Install Xcode before set up your MacBook.'
  echo 'App Store https://apps.apple.com/jp/app/xcode/id497799835?mt=12'
  exit
fi

# Install Homebrew
if ! which -s brew; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

. ./var/brew_packages.sh
# Install brew packages
for package in $BREW_PACKAGES; do
  if brew list -l | grep -q $package; then
    echo "Skip: brew install ${package}"
  else
    brew install $package
  fi
done

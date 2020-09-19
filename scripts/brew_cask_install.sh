# Enable homebrew-cask
# FIY: https://github.com/Homebrew/brew/blob/master/docs/Taps.md#the-brew-tap-command

# Install Homebrew
if ! which -s brew; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Enable brew cask
if ! which -s cask; then
  brew tap homebrew/cask
  brew tap
fi

# Install apps
. ~/my-setup/var/mac_apps.sh
for app in $MAC_APPS; do
  if brew cask list | grep -q $app; then
    echo "Skip: brew cask install ${app}"
  else
    brew cask install $app
  fi
done

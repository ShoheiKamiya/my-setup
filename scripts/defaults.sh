#!/bin/bash

# キーリピートを早くする
defaults write NSGlobalDomain KeyRepeat -int 2

# キーリピート開始までの時間を早くする
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# トラックパッドの速度を早くする
defaults write NSGlobalDomain com.apple.trackpad.scaling -int 3

# finderで隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles 'YES'

# メニューバーの時間表示を変更する
defaults write com.apple.menuextra.clock DateFormat 'EEE d MMM HH:mm'

# バッテリー残量の割合 (%) を表示
defaults write com.apple.menuextra.battery ShowPercent 'YES'

# スクリーンショットの保存先を変更する
if ls -l ~/Pictures/ | grep -q screencaptures; then
  echo '~/Pictures/screencaptures is already exists'
else
  mkdir ~/Pictures/screencaptures
fi
defaults write com.apple.screencapture location ~/Pictures/screencaptures

read -n1 -p "These settings will be relfected after reboot. Do you want to reboot? (y/N) >" yn
if [[ $yn = [yY] ]]; then
  sudo shutdown -r now
else
  echo -e "\n Rebooting is aborted"
fi

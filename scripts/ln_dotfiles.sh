# ~/.xxx が ~/my-setup/dotfiles/.xxx を参照するようにシンボリックリンクを貼る
ls -a1 ~/my-setup/dotfiles | grep -e "\.[a-z]" | xargs -I@ ln -sf ~/my-setup/dotfiles/@ ~/@
mkdir ~/.config/nvim
ln -fs ~/my-setup/dotfiles/init.vim ~/.config/nvim/init.vim

#!/usr/bin/env zsh

mkdir ~/.config
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/tmux ~/.config/tmux
ln -sf ~/dotfiles/wezterm ~/.config/wezterm
ln -sf ~/dotfiles/yazi ~/.config/yazi
ln -sf ~/dotfiles/zsh ~/.config/zsh
rm -f ~/.zshrc
ln -sf ~/.config/zsh/zshrc ~/.zshrc


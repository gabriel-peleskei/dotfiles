#!/usr/bin/env zsh

mkdir ~/.config
rm -rf ~/.config/nvim ~/.config/tmux ~/.config/wezterm ~/.config/yazi ~/.config/zsh
ln -sf ./nvim ~/.config/nvim
ln -sf ./tmux ~/.config/tmux
ln -sf ./wezterm ~/.config/wezterm
ln -sf ./yazi ~/.config/yazi
ln -sf ./zsh ~/.config/zsh
rm -f ~/.zshrc
ln -sf ~/.config/zsh/zshrc ~/.zshrc


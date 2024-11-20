#!/bin/bash

p=$(dirname $0)
p=$(realpath $p)
t=$HOME/.config
mkdir $t 2>/dev/null
rm -rf $t/nvim $t/tmux $t/wezterm $t/yazi $t/zsh
ln -sf $p/nvim $t/nvim
ln -sf $p/tmux $t/tmux
ln -sf $p/wezterm $t/wezterm
ln -sf $p/yazi $t/yazi
ln -sf $p/zsh $t/zsh
ln -sf $p/hammerspoon $HOME/.hammerspoon
rm -f $HOME/.zshrc
ln -sf $p/zsh/zshrc $HOME/.zshrc


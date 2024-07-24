#!/bin/bash
# install tools 

p=$(dirname $0)
p=$(realpath $p)
t=$HOME/.config

rm -r $p/tmux/plugins/tpm $p/zsh/oh-my-zsh/custom/themes/powerlevel10k
git clone --depth=1 https://github.com/tmux-plugins/tpm $p/tmux/plugins/tpm
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $p/zsh/oh-my-zsh/custom/themes/powerlevel10k

sudo yay -S zoxide bat fd ripgrep eza jq yazi fzf zsh poppler unarchiver ffmpegthumbnailer neovim lazygit vim tmux tree xclip kitty \
      otf-monaspace otf-monaspace-nerd ttf-nerd-fonts-symbols-mono ttf-nerd-fonts-symbols
sudo fc-cache

mkdir -p $t 2>/dev/null

rm -rf $t/nvim $t/tmux $t/wezterm $t/yazi $t/zsh $t/kitty

ln -sf $p/nvim $t/nvim
ln -sf $p/tmux $t/tmux
ln -sf $p/wezterm $t/wezterm
ln -sf $p/yazi $t/yazi
ln -sf $p/kitty $t/kitty
ln -sf $p/zsh $t/zsh

rm -f $HOME/.zshrc
ln -sf $p/zsh/zshrc $HOME/.zshrc


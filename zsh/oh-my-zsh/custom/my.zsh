# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# eval "$(starship init zsh)"
# eval "$(zoxide init zsh --cmd cd)"
# eval "$(fzf --zsh)"
# Path to your oh-my-zsh installation.
# export ZSH="./oh-my-zsh"
#
# export FZF_DEFAULT_COMMAND='fd . --hidden --exclude ".git"'
# export FZF_DEFAULT_OPTS='--preview "bat --color=always {} | head -500"'
export FZF_DEFAULT_OPTS='--height=50% --margin=5%,5%,5%,5% --layout=reverse-list --border=double'
export PATH=/usr/local/go/bin:$PATH
export TERM='screen-256color'
export UID=$(id -u)
export GID=$(id -g)
alias ibrew='arch -x86_64 /usr/local/Homebrew/bin/brew'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ls='eza --git --icons=always -o -F'
alias t_='ls -T'
alias t='t_ -L 1'
alias t.='t_ -L 2'
alias t..='t_ -L 3'
alias t...='t_ -L 4'
alias tt_='t_ -A'
alias tt='tt_ -L 1'
alias tt.='tt_ -L 2'
alias tt..='tt_ -L 3'
alias tt...='tt_ -L 4'
alias ll='ls -lF'
alias llt='ll -T'
alias lltl='llt -L'
alias l='ll -a'
alias lt='l -T'
alias ltl='lt -L'
alias pedit='nvim $ZSH_CUSTOM/my.zsh'
alias pvim='j ~/.config/nvim/init.lua'
alias ovim='j ~/.config/nvim/'
alias psource='source $HOME/.zshrc'
alias lg='lazygit'
alias ld='lazydocker'
alias tm='tmux'
alias rg='rg -S'

alias fz="fzf -m --bind 'ctrl-a:toggle-all'"
alias fx="fz | xargs "
alias fxc="fx code"
alias fxn='fx nvim'
alias fxj='fx nvim'
alias f="find . -name '*' -not -path '*/.git/*' | fz"
alias fa="f | xargs "
alias fc="fa code"
alias fn='fa nvim'
alias fj='fa nvim'
alias ff="fd --type f --hidden --exclude .git | fz"
alias ffa="ff | xargs "
alias ffc="ffa code"
alias ffn='ffa nvim'
alias ffj='ffn'
alias d='fd -t d | fzf '
alias da='d | xargs '
alias dcd='cd $(d)'
alias copy="xclip -selection c"
alias paste="xclip -selection c -o"
alias g="git"
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit"
alias gca="git commit --amend"
alias gcm="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gd="git diff"
alias gl="git log"
alias gw="git switch"
alias gww="git switch -c"
alias gm="git merge"
alias gms="git merge --squash"
alias gma="git merge --abort"
alias gre="git restore"
alias gres="git restore --staged"
alias gr="git rebase"
alias gb="git branch"
alias gbf="git branch | fx "
alias gbfr="git branch -r | fx "
alias gbr="git branch -r"
alias gbd="git branch -d"
alias gbdf="gbf gbd"
alias gbD="git branch -D"
alias gbDf="gbf gbD"
alias gwf="gbf gw"
alias gwfr="gbfr gw"

alias dc='docker compose'
alias dcu='dc up'
alias dcud='dcu -d'
alias dcr='dc restart'
alias dcs='dc stop'

function dce() {
  dc exec $1 bash
}
 
function dcz() {
  dc exec $1 zsh
}


function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}


function n() {
  if [ -z "$1" ]; then
    nvim .
  else 
    p=$(realpath $1)
    if [ -f "$p" ]; then 
      nvim $1
    else  
      nvim --cmd "cd $1" $1
    fi
  fi
}

function update-flatpak-desktop() {
  for f in $(find /var/lib/flatpak/app/ -depth -type f -name '*.desktop')
  do
    fn=$(basename $f)
    if [ $fn = "org.telegram.desktop" ]; then continue; fi
    sudo ln -sf $f /usr/share/applications/$fn
    sudo chmod 644 /usr/share/applications/$fn
  done
}

if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  . /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
elif [ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  . /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi


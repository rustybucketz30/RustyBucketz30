
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '


# ALIASES
alias c='clear'
alias nf='neofetch'
alias pf='pfetch'
alias ls='exa -al'
alias shutdown='systemctl poweroff'
alias matrix='cmatrix'
alias wifi='nmtui'
alias winclass="xprop | grep 'CLASS'"
alias dot="cd ~/dotfiles"
alias matrix="cmatrix -r -b -a -u 3"
alias logout="wlogout"
alias tor="tor-browser"
alias axoims="nvim /mnt/00_root/00_Root/01_Personal/02_Projects/03_Andrew/ListOfAxoims.txt"

# alias rm="rm -i"
# alias cp="cp -i"
# alias mv="mv -i"

# Open Newsboat and refresh links
alias news="newsboat -r"

# Open neomutt and refresh links
alias emails='neomutt'

# alias notes='vim ~/notes.txt'

alias docs="nvim ~/dotfiles/README.md"

# Open Video Game Therapy File
alias vgt="nvim +$ /mnt/00_root/00_Root/01_RustyBucketz30/02_VideoGameTherapy/03_MasterResources/Video_Game_Therapy_Topics.txt"

# Open links.md file for the month - update monthly
alias links="nvim +$ /mnt/00_root/00_Root/01_RustyBucketz30/02_Website/rustybucketz.xyz/md_backlog/november-2023.md"
alias keys="nvim ~/dotfiles/hypr/keybindings.conf"

# GIT
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"

# SCRIPTS
alias confb='nvim ~/dotfiles/.bashrc'
alias wallp='exec ~/dotfiles/waybar/launch.sh'

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
eval "$(starship init bash)"
cat ~/.cache/wal/sequences
echo ""
pfetch

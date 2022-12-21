#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="nvim"
export BROWSER=/usr/bin/vimprobable2


#alias ls='ls --color=auto'
alias ls='logo-ls'
alias nf='neofetch'
alias cls='clear'
alias ll='logo-ls -l'
alias lf='lfub'
alias pacman='sudo pacman'
alias gitdot='/usr/bin/git --git-dir=/home/quythuong/.dotfiles/ --work-tree=/home/quythuong'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
#eval "$(oh-my-posh init bash --config ~/.config/.poshthemes/agnosterplus-modded.omp.json)"

ibus-daemon -drxR
neofetch
. ~/softwares/z.sh


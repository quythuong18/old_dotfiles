#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="nvim"

#alias ls='ls --color=auto'
alias ls='logo-ls'
alias nf='neofetch'
alias cls='clear'
alias ll='logo-ls -l'
alias lf='lfub'
alias pacman='sudo pacman'
alias gitdot='/usr/bin/git --git-dir=/home/quythuong/.dotfiles/ --work-tree=/home/quythuong'
alias tlg='Telegram'
alias cd..='cd ..'
alias fm6tmod='fm6000 -f ~/others/arch_logo.txt -o "Arch Linux" -d "dwm" -c blue'

PS1='[\u@\h \W]\$ '

#eval "$(starship init bash)"
eval "$(oh-my-posh init bash --config ~/.config/.poshthemes/catppuccin_mocha-modded.omp.json)"

fm6tmod
. ~/softwares/z.sh





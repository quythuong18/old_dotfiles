#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="nvim"
export BROWSER=/usr/bin/vimprobable2
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus


#alias ls='ls --color=auto'
alias ls='logo-ls'
alias nf='neofetch'
alias cls='clear'
alias ll='logo-ls -l'
alias lf='lfub'
alias pacman='sudo pacman'
alias gitdot='/usr/bin/git --git-dir=/home/quythuong/.dotfiles/ --work-tree=/home/quythuong'

PS1='[\u@\h \W]\$ '

#eval "$(oh-my-posh init bash --config ~/.config/.poshthemes/agnosterplus-modded.omp.json)"
eval "$(starship init bash)"

ibus-daemon -drxR
neofetch
. ~/softwares/z.sh


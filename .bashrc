# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.pre.bash"
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return



#alias ls='ls --color=auto'
alias ls='logo-ls'
alias nf='neofetch'
alias cls='clear'
alias ll='logo-ls -l'
alias lf='lfrun'
alias pacman='sudo pacman'
alias gitdot='/usr/bin/git --git-dir=/home/quythuong/.dotfiles/ --work-tree=/home/quythuong'
alias fm6tmod='~/softwares/fm6000 -f ~/others/arch_logo.txt -o "Arch Linux" -d "dwm" -c green'
alias say='fortune -a | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n'
alias py='python'
alias webcam='mpv /dev/video0'
alias connect_earphone='~/softwares/connect_earphone.sh'


#PS1='[\u@\h \W]\$ '
PS1='\[\e]133;k;start_kitty\a\]\[\e]133;A\a\]\[\e]133;k;end_kitty\a\]\[\] \[\]\[\]quythuong@ArchLinux \[\]\[\]~ \[\]\[\]❯\[\]\[\] \[\e]133;k;start_suffix_kitty\a\]\[\e[5 q\]\[\e]2;\w\a\]\[\e]133;k;end_suffix_kitty\a\]'

#eval "$(starship init bash)"
eval "$(oh-my-posh init bash --config ~/.config/.poshthemes/catppuccin_mocha-modded.omp.json)"

fm6tmod
. ~/softwares/z.sh

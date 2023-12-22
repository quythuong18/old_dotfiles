
# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls='ls --color=auto'
#alias ls='logo-ls'
alias nf='neofetch'
alias cls='clear'
alias ll='logo-ls -l'
alias lf='lfrun'
#alias pacman='sudo pacman'
alias gitdot='/usr/bin/git --git-dir=/home/quythuong/.dotfiles/ --work-tree=/home/quythuong'
alias say='fortune -a | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n'
alias py='python'
alias webcam='mpv /dev/video0'
alias rambox='~/.local/bin/rambox'
alias connect_earphone='~/.local/bin/connect_earphone.sh'
alias nv="nvim"
alias nc="NVIM_APPNAME=NvChad nvim"

alias livefde="reload-live-server --browser=firefox-developer-edition"
alias livef="reload-live-server --browser=firefox"


#PS1='[\u@\h \W]\$ '
#PS1='\[\e]133;k;start_kitty\a\]\[\e]133;A\a\]\[\e]133;k;end_kitty\a\]\[\] \[\]\[\]quythuong@ArchLinux \[\]\[\]~ \[\]\[\]❯\[\]\[\] \[\e]133;k;start_suffix_kitty\a\]\[\e[5 q\]\[\e]2;\w\a\]\[\e]133;k;end_suffix_kitty\a\]'

#eval "$(starship init bash)"
eval "$(oh-my-posh init bash --config ~/.config/.poshthemes/catppuccin_mocha-modded.omp.json)"

source ~/.local/share/icons-in-terminal/icons_bash.sh
. ~/.local/bin/z.sh



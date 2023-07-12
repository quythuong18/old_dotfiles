
# Start X at login
if ! timeout 1s xset q &>/dev/null
    ~/softwares/fm6000 -f ~/others/arch_logo.txt -o 'Arch Linux' -d 'dwm' -c green
    startx
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x PERL5LIB /home/iaco/workspace/perl:/home/iaco/devtools
end

function fish_greeting
    random choice "Perfection isn't good enough." "My theater is the mind." "You shoot to kill, you better hit the heart." "Howdy" "Hi, Quy Thuong!" "In another parallel world...!" "Art is worth the pain." "Death is certain, but killing doesn't have to be ugly." "Which is the lie? The mask, or my face?"
end

function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

alias fm6tmod="~/softwares/fm6000 -f ~/others/arch_logo.txt -o 'Arch Linux' -d 'dwm' -c green"
#alias ls="logo-ls"
alias nf="neofetch"
alias nfs="fm6tmod"
alias cls="clear"
alias lf="lfrun"
alias pacman="sudo pacman"
alias gitdot="/usr/bin/git --git-dir=/home/quythuong/.dotfiles/ --work-tree=/home/quythuong"
alias py="python"
alias connect_earphone="~/softwares/connect_earphone.sh"
alias rambox="~/softwares/rambox"
alias nv="nvim"
alias nc="NVIM_APPNAME=NvChad nvim"

set -x PATH $PATH ~/softwares
set -x PATH $PATH ~/softwares/Discord
set -x PATH $PATH ~/.local/bin

#set PS1 '\[\e]133;k;start_kitty\a\]\[\e]133;A\a\]\[\e]133;k;end_kitty\a\]\[\] \[\]\[\]quythuong@ArchLinux \[\]\[\]~ \[\]\[\]❯\[\]\[\] \[\e]133;k;start_suffix_kitty\a\]\[\e[5 q\]\[\e]2;\w\a\]\[\e]133;k;end_suffix_kitty\a\]'

oh-my-posh init fish --config ~/.config/.poshthemes/catppuccin_mocha-modded.omp.json | source
#starship init fish | source 
source ~/.local/share/icons-in-terminal/icons.fish

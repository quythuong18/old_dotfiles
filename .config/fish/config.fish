# Start X at login
if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx
  end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x PERL5LIB /home/iaco/workspace/perl:/home/iaco/devtools
end

function fish_greeting
    random choice "Hello!" "Hi" "G'day" "Howdy" "Hi, Quy Thuong!"
end

function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

alias ls="logo-ls"
alias nf="neofetch"
alias cls="clear"
alias ll="logo-ls -l"
alias lf="lfrun"
alias pacman="sudo pacman"
alias gitdot="/usr/bin/git --git-dir=/home/quythuong/.dotfiles/ --work-tree=/home/quythuong"
alias fm6tmod="~/softwares/fm6000 -f ~/others/arch_logo.txt -o 'Arch Linux' -d 'dwm' -c green"
alias say="fortune -a | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n"
alias py="python"
alias webcam="v4l2-ctl --set-fmt-video=width=600; mpv /dev/video0"
alias connect_earphone="~/softwares/connect_earphone.sh"
alias nc="NVIM_APPNAME=NvChad nvim"

oh-my-posh init fish --config ~/.config/.poshthemes/catppuccin_mocha-modded.omp.json | source
    
fm6tmod





# Start X at login
if ! timeout 1s xset q &>/dev/null
    ~/.local/bin/fm6000 -f ~/others/arch_logo.txt -o 'Arch Linux' -d 'dwm' -c green
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

alias fm6tmod="~/.local/bin/fm6000 -f ~/others/arch_logo.txt -o 'Arch Linux' -d 'dwm' -c green"
alias ls="logo-ls"
alias nf="neofetch"
alias nfs="fm6tmod"
alias cls="clear"
alias lf="lfrun"
alias pacman="sudo pacman"
alias gitdot="/usr/bin/git --git-dir=/home/quythuong/.dotfiles/ --work-tree=/home/quythuong"
alias py="python"
alias connect_earphone="~/.local/bin/connect_earphone.sh"
alias rambox="~/.local/bin/rambox"
alias nv="nvim"
alias nc="NVIM_APPNAME=NvChad nvim"

# set environment variables

fish_add_path ~/.local/bin

	# eclipse
fish_add_path ~/softwares/jee-2023-06/eclipse/
	#jdk, maven and tomcat
set -x JAVA_HOME /usr/lib/jvm/java-20-openjdk/
set -x MAVEN_HOME ~/java_web_tools/apache-maven-3.9.4/

oh-my-posh init fish --config ~/.config/.poshthemes/catppuccin_mocha-modded.omp.json | source
#starship init fish | source 
source ~/.local/share/icons-in-terminal/icons.fish



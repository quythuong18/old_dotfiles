# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bash_profile.pre.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.pre.bash"
#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


export PATH=$PATH:~/softwares/Telegram/
export PATH=$PATH:~/softwares/Discord/
export PATH=$PATH:~/softwares/
export PATH=$PATH:~/.local/bin
startx

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bash_profile.post.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.post.bash"

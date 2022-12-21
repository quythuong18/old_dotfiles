#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR="nvim"
export BROWSER=/usr/bin/vimprobable2
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

export PATH=$PATH:~/softwares/Telegram/
export PATH=$PATH:~/softwares/Discord/
export PATH=$PATH:~/softwares/
export PATH=$PATH:~/.local/bin

startx
ibus-daemon -drxR

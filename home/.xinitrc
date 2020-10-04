#!/bin/bash

export NNN_COLORS='1234'
export NNN_PLUG='i:imgview;d:dragdrop'

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export EDITOR="nvim"
export BROWSER="qutebrowser"
export SHELL="fish"
export TERMINAL="alacritty"
export PAGER="less"

export LESSHISTFILE=-

xset dpms 0 0 1000
setxkbmap pl -option caps:super
xmodmap ~/.Xmodmap
xcape -e 'Shift_L=Escape;Super_L=BackSpace'

dunst &
picom &
mpd &
transmission-daemon &

~/.local/bin/wallchang.fish &

i3

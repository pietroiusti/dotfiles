#!/bin/sh

[ -f ~/.xprofile ] && . ~/.xprofile

xhost +SI:localuser:$USER

export _JAVA_AWT_WM_NONREPARENTING=1

xsetroot -cursor_name left_ptr

xset r rate 200 60

exec emacs -l ~/.emacs.d/init-exwm.el

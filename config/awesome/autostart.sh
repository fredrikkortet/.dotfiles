#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"
run "nm-applet"
run "blueberry-tray"
run "/usr/bin/lxpolkit"
run "numlockx on"
run "volumeicon"
run "signal-desktop"
feh --rendomize --bg-fill /home/tipparn/.wallpaper
<<<<<<< HEAD
xset r rate 300 50
setxkbmap -option ctrl:nocaps
xmodmap -e "keycode 66 = Escape"
run "sudo $HOME/.config/awesome/scripts/init_blackwidow.py"
=======
run "xset r rate 300 50"
>>>>>>> 6a8d1691ed406969b3af59a191a60db67d97c5cc

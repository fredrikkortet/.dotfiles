#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"
#nm-applet &
#run "blueberry-tray"
/usr/bin/lxpolkit &
numlockx on
#volumeicon
signal-desktop &
feh --randomize --bg-fill /home/tipparn/.wallpaper &
xset r rate 300 50 &
$HOME/.dwm/dwmblocks/dwmblocks &
setxkbmap -option ctrl:nocaps &
xmodmap -e "keycode 66 = Escape" &
picom --experimental-backends --xrender-sync-fence &
#run "sudo $HOME/.config/awesome/scripts/init_blackwidow.py"

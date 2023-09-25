# https://wiki.archlinux.org/title/Backlight
# External monitors

pacman -S ddcutil
modprobe i2c-dev
ddcutil capabilities | grep "Feature: 10"
ddcutil getvcp 10

# set 70 on 100
ddcutil setvcp 10 70

#!/bin/bash

bg1() {
name=bgterm1
urxvt -name $name -title $name -geometry 120x70+0+16 -sh 30 -e sudo htop &
sleep 1
wmctrl -i -r $(wmctrl -l | grep $name | awk '{ print $1 }') -b add,below
}

bg2() {
name=bgterm2
urxvt -name $name -title $name -geometry 320x10+0+816 -sh 30 -e sudo tail -f /var/log/dmesg.log &
sleep 1
wmctrl -i -r $(wmctrl -l | grep $name | awk '{ print $1 }') -b add,below
}

glwall() {
    cd ~/projects/glwall
    ./build/glwall &
}

#bg1 &
#bg2 &
glwall &

export PATH="$HOME/projects/homescripts:$HOME/.local/bin:$HOME/.gem/ruby/1.9.1/bin:/usr/bin/vendor_perl/:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable bash completion
[ -r /etc/bash_completion ] && . /etc/bash_completion

# pretty ps
if [ $UID -ne 0 ]; then
  PS1='\[\e[1;32m\]\h:\[\e[1;34m\]\w \[\e[m\]\[\e[1m\]\$ \[\e[m\]'
else
  # root has an special ps
  PS1='\[\e[1;31m\]\h:\[\e[1;34m\]\w \[\e[1;31m\]# \[\e[m\]'
fi

# because I don't like losing history
export HISTSIZE=100000
export HISTFILESIZE=100000
export WINEARCH=win32

# default editor to use on some term apps
export EDITOR=vim
export BROWSER=google-chrome

# file related utils
mktar() { tar cvf  "${1%%/}.tar"     "${1%%/}/"; }
mktgz() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
mktbz() { tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }
mkmine() { sudo chown -R ${USER}:${USER} ${1:-.}; }
bu() { cp $1 ${1}-`date +%Y%m%d%H%M`.backup ; }
findinfiles() { find -type f -exec grep -H "$*" {} \;; }
findfile() { find -iname "*$**"; }

# util for hex conversion
h2d() { awk "BEGIN { printf \"%d\n\",$1}"; }
d2h() { awk "BEGIN { printf \"%x\n\",$1}"; }

# for managing services
start() { sudo /etc/rc.d/$1 start; }
stop() { sudo /etc/rc.d/$1 stop; }
restart() { sudo /etc/rc.d/$1 restart; }
reload() { sudo /etc/rc.d/$1 reload; }

# screenshoting routines
shot() { local PIC="$HOME/shots/shot_$(date +%y%m%d%H%M).png"; scrot -scd 3 $PIC; }
uploadimg() { curl -# -F "image"=@"$1" -F "key"="4907fcd89e761c6b07eeb8292d5a9b2a" http://imgur.com/api/upload.xml | grep -Eo '<[a-z_]+>http[^<]+'|sed 's/^<.\|_./\U&/g;s/_/ /;s/<\(.*\)>/\x1B[0;32m\1:\x1B[0m /'; }
uploadshot() { local PIC="$HOME/shots/shot_$(date +%y%m%d%H%M).png"; scrot -scd 3 $PIC;  uploadimg $PIC; }

# fast way to add new alises
add-alias() { echo "alias $*" >> $HOME/.bashrc_local && source $HOME/.bashrc_local; }

# usefull dictionary
dic() { curl dict://dict.org/d:"$@" ; }

# bashrc
alias bashrc-reload="source ~/.bashrc"
alias bashrc-edit="vim ~/.bashrc; source ~/.bashrc"
alias bashrc-edit-local="vim ~/.bashrc_local; source ~/.bashrc"

# pwering off shortcuts
if [ $UID -ne 0 ]; then
  alias reboot="sudo reboot"
  alias poweroff="sudo poweroff"
fi

# general shortcuts
alias ls='ls --color=auto'
alias ll="ls -lh"
alias la="ls -a"
alias ..="cd .."
alias x="startx"
alias svim="sudo vim"
alias dirsize="du -xd1 | sort -n"

# pacman aliases
#alias pacman="yaourt"
alias pacsearch="pacman -Sl | cut -d' ' -f2 | grep "
alias pacsync='pacman -Sy'
alias pacup='pacman -Syu'
alias pacclean='pacman -Scc'

# editing shortcuts
alias rclua="vim ~/.config/awesome/rc.lua"
alias vimrc="vim ~/.vimrc"

# for notebook
alias battery="acpi -i"
alias suspend="sudo pm-suspend"
alias touchpadoff="synclient TouchpadOff=1"
alias touchpadon="synclient TouchpadOff=0"
alias pacman="sudo pacman"
alias aur=yaourt

# private stuff
[ -f "$HOME/.bashrc_local" ] && source $HOME/.bashrc_local

alias list-ssh="cat ~/.bashrc_local | grep \"ssh_\""


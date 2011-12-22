export PATH="$PATH:~/.local/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:./"

# Check for an interactive session
[ -z "$PS1" ] && return

export HISTSIZE=1000
export HISTFILESIZE=1000
export EDITOR=vim

alias ls='ls --color=auto'
#PS1='\[\e[1;32m\]\h \[\e[1;34m\]\w \[\e[1;32m\]\$ \[\e[0;37m\]'
PS1='\[\e[1m\]\u@\h:\[\e[1;34m\]\w \[\e[0m\]\[\e[1m\]\$ \[\e[0m\]'

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

alias ll="ls -lh"
alias la="ls -a"
alias exit="clear; exit"
alias x="startx"
alias ..="cd .."

alias pacman="yaourt"
alias pacsearch="pacman -Sl | cut -d' ' -f2 | grep "
alias pacsync='pacman -Sy'        # Sync
alias pacup='pacman -Syu'        # Sync & Update
alias pacin='pacman -S'        # Install a specific package
alias pacout='pacman -Rs'        # Remove a specific package
alias pacclean='pacman -Scc'    # Clean package cache
alias pac="pacman -S"

if [ -n "$DISPLAY" ]; then
   BROWSER=google-chrome
fi

OpenURL() {
  $HOME/Programs/simplebrowser/simplebrowser $1 &
}

function hex2dec { awk "BEGIN { printf \"%d\n\",$1}"; }
function dec2hex { awk "BEGIN { printf \"%x\n\",$1}"; }

loadbrkey () {
    sudo loadkeys /usr/share/kbd/keymaps/i386/qwerty/br-abnt2.map.gz
    setxkbmap -model abnt2 br
}

imgur() {
for i in "$@";do
curl -# -F "image"=@"$i" -F "key"="4907fcd89e761c6b07eeb8292d5a9b2a" http://imgur.com/api/upload.xml|\
    grep -Eo '<[a-z_]+>http[^<]+'|sed 's/^<.\|_./\U&/g;s/_/ /;s/<\(.*\)>/\x1B[0;32m\1:\x1B[0m /'
    done
}

shot(){
  local PIC="$HOME/artwork/screenshots/desktop_$(date +%y%m%d%H%M).png"
  scrot -scd 3 $PIC
  imgur $PIC
}

findinfiles() {
    find -type f -exec grep -H "$*" {} \;
}

extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)    tar xjf $1        ;;
            *.tar.gz)    tar xzf $1        ;;
            *.tar.xz)    tar Jxvf $1       ;;
            *.bz2)        bunzip2 $1        ;;
            *.rar)        unrar x $1        ;;
            *.gz)        gunzip $1        ;;
            *.tar)        tar xf $1        ;;
            *.tbz2)        tar xjf $1        ;;
            *.tgz)        tar xzf $1        ;;
            *.zip)        unzip $1        ;;
            *.Z)        uncompress $1    ;;
            *)            echo "'$1' cannot be extracted via extract()"
;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}


myip ()
{
lynx -dump -hiddenlinks=ignore -nolist http://checkip.dyndns.org:8245/ | awk '{ print $4 }' | sed '/^$/d; s/^[ ]*//g; s/[ ]*$//g'
}

define ()
{
lynx -dump "http://www.google.com/search?hl=en&q=define%3A+${1}&btnG=Google+Search" | grep -m 3 -w "*"  | sed 's/;/ -/g' | cut -d- -f1 > /tmp/templookup.txt
         if [[ -s  /tmp/templookup.txt ]] ;then
            until ! read response
               do
               echo "${response}"
               done < /tmp/templookup.txt
            else
               echo "Sorry $USER, I can't find the term \"${1} \""
         fi
rm -f /tmp/templookup.txt
}

dirsize ()
{
du -shx * .[a-zA-Z0-9_]* 2> /dev/null | \
egrep '^ *[0-9.]*[MG]' | sort -n > /tmp/list
egrep '^ *[0-9.]*M' /tmp/list
egrep '^ *[0-9.]*G' /tmp/list
rm /tmp/list
}

bu () { cp $1 ${1}-`date +%Y%m%d%H%M`.backup ; }

# Creates an archive from given directory
mktar() { tar cvf  "${1%%/}.tar"     "${1%%/}/"; }
mktgz() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
mktbz() { tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }


# mkmine - recursively change ownership to $USER:$USER
# usage:  mkmine, or
#         mkmine <filename | dirname>
function mkmine() { sudo chown -R ${USER}:${USER} ${1:-.}; }


# start, stop, restart, reload - simple daemon management
# usage: start <daemon-name>
start()
{
  for arg in $*; do
    sudo /etc/rc.d/$arg start
  done
}
stop()
{
  for arg in $*; do
    sudo /etc/rc.d/$arg stop
  done
}
restart()
{
  for arg in $*; do
    sudo /etc/rc.d/$arg restart
  done
}
reload()
{
  for arg in $*; do
    sudo /etc/rc.d/$arg reload
  done
}

if [ "$TERM" = "xterm" ] ; then
    if [ -z "$COLORTERM" ] ; then
        if [ ! -z "$XTERM_VERSION" ] ; then
            case "$XTERM_VERSION" in
            "XTerm(256)") TERM="xterm-256color" ;;
            "XTerm(88)") TERM="xterm-88color" ;;
            "XTerm") ;;
            esac
        fi
    else
        case "$COLORTERM" in
            gnome-terminal)
                export TERM="xterm-256color"
                ;;
        esac
    fi
fi

alias bashrc="vim ~/.bashrc; source ~/.bashrc; clear"
alias rclua="vim ~/.config/awesome/rc.lua"
alias vimrc="vim ~/.vimrc"
alias battery="acpi -i"
alias suspend="sudo pm-suspend"
toggletouchpad() {
    if [ `synclient -l | grep TouchpadOff | sed 's/.*= //'` == 0]; then
        synclient TouchpadOff=1
    else
        synclient TouchpadOff=0
    fi
}


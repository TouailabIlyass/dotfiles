#!/bin/sh
# Date    : 21/07/2017
# Version : v2.0.1

lock() {
    #i3lock -c 222222
    #i3lock -i ~/.config/i3/scripts/lockscreen/lockscreen.png -t
    ~/betterlockscreen/lock.sh --lock 
}

sus() {
    #i3lock -c 222222
    #i3lock -i ~/.config/i3/scripts/lockscreen/lockscreen.png -t
    systemctl suspend
    ~/betterlockscreen/lock.sh --lock
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        sus
        ;;
    hibernate)
        systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0

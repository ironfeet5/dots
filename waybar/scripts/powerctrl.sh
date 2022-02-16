#!/bin/bash
case $(wofi -d -L 7 -l 3 -W 200 -x -1720 -y 10 \
    -D dynamic_lines=true << EOF | sed 's/^ *//'
    shutdown
    reboot
    log off
    sleep
    lock
    cancel
EOF
) in
    "shutdown")
        systemctl poweroff
        ;;
    "reboot")
        systemctl reboot
        ;;
    "sleep")
        systemctl suspend
        ;;
    "lock")
        bash $HOME/code/scripts/lock.sh
        ;;
    "log off")
        swaymsg exit
        ;;
esac

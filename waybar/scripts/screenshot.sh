#!/bin/bash
case $(wofi -d -L 7 -l 3 -W 200 -x -1720 -y 10 \
    -D dynamic_lines=true << EOF | sed 's/^ *//'
    cancel
    active
    screen
    output
    area
    window
EOF
) in
    "active")
        grimshot save active
        ;;
    "screen")
        grimshot save screen
        ;;
    "output")
        grimshot save output
        ;;
    "area")
        grimshot save area
        ;;
    "window")
        grimshot save window
        ;;
esac

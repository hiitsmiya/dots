#!/bin/bash

# Terminate already running dunst instances
killall -q dunst
/bin/dunstwal
# wait until the processes have been shut down
while pgrep -u $UID -x dunst >/dev/null; do sleep1; done

# launch dunst
dunst &

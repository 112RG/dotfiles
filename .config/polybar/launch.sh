#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar example &
done
#MONITOR=HDMI-0 polybar bottom &
#MONITOR=DP-0 polybar bottom &
#MONITOR=DP-1 polybar bottom &
echo "Bars launched..."

#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -U $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar top -c /home/helm/.config/polybar/mobile-config & 
polybar bottom -c /home/helm/.config/polybar/mobile-config &

echo "Bars launched..."

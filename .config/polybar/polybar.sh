#!/usr/bin/env zsh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar -c=$HOME/.config/polybar/config top &
polybar -c=$HOME/.config/polybar/config bottom &

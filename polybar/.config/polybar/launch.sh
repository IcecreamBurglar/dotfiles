#!/usr/bin.env sh


# Terminate instances of the bar that may already be running.
killall -q polybar

# Wait until the processes have been shut down.
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bars
polybar left & center & right



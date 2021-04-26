#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybari3.log /tmp/polybar2.log
polybar polybari3 2>&1 | tee -a /tmp/polybari3.log & disown

echo "---" | tee -a /tmp/polybarstatus.log /tmp/polybarstatus.log
polybar polybarstatus 2>&1 | tee -a /tmp/polybarstatus.log & disown

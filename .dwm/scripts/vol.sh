#!/bin/bash

ARG=$1

DEF=$(eval "pacmd info | grep 'Default sink name'")
DEF=${DEF##*:}
STATUS=$(eval "pactl get-sink-mute $DEF")

if [ "$ARG" == "mute" ]; then
	eval "pactl set-sink-mute ${DEF} toggle"
	if [ "$STATUS" == "Mute: yes" ];then
		notify-send --hint=string:x-dunst-stack-tag:volume  "Unmuted"
	else
		notify-send --hint=string:x-dunst-stack-tag:volume  "Muted"
	fi
	
else
	eval "pactl set-sink-volume ${DEF} ${ARG}" && notify-send --hint=string:x-dunst-stack-tag:volume 'Volume:'$(pamixer --get-volume-human)
fi

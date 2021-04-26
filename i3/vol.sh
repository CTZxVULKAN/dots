#!/bin/bash

ARG=$1

DEF=$(eval "pacmd info | grep 'Default sink name'")
DEF=${DEF##*:}

if [ "$ARG" == "mute" ]; then
	eval "pactl set-sink-mute ${DEF} toggle"
else
	eval "pactl set-sink-volume ${DEF} ${ARG}"
fi

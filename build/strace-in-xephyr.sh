#!/bin/sh

Xephyr :1 -screen 1024x600 -host-cursor -ac &

export DISPLAY=localhost:1.0
export CLUTTER_DISABLE_MIPMAPPED_TEXT=1
export MUTTER_DISABLE_WS_CLAMP=1

strace metacity --mutter-plugins=moblin-netbook $@ &

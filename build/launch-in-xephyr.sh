#!/bin/sh

export DISPLAY=localhost:1.0
export MUTTER_DISABLE_WS_CLAMP=1

${HOME}/moblin2/install/bin/metacity --mutter-plugins=moblin-netbook $@

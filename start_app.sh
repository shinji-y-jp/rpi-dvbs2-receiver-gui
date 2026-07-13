#!/bin/bash

LOG=/tmp/dvbs2-app.log

exec >>"$LOG" 2>&1

echo "===== $(date) ====="
echo "HOME=$HOME"
echo "USER=$USER"
echo "DISPLAY=$DISPLAY"
echo "WAYLAND_DISPLAY=$WAYLAND_DISPLAY"
echo "XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR"
echo "PWD before=$(pwd)"

# デスクトップ起動待ち
sleep 5

cd /home/shinji-y/dvb-s || exit 1

echo "PWD after=$(pwd)"
echo "PATH=$PATH"

/home/shinji-y/dvb-s/app

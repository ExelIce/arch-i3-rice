#!/usr/bin/env bash

# закрываем старые polybar
killall -q polybar

# ждём пока они закроются
while pgrep -x polybar >/dev/null; do sleep 1; done

# запускаем workspace bar
polybar workspaces &

# запускаем основной bar
polybar primary &

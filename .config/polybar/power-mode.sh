#!/bin/bash

mode=$(powerprofilesctl get)

case "$mode" in
    performance) echo "%{T3}%{F#ff003c}󰓡 %{F-}%{T-}" ;;
    balanced) echo "%{T3}%{F#cfa96b}󰓅 %{F-}%{T-}" ;;
    power-saver) echo "%{T3}%{F#ff4f9a}󰾆 %{F-}%{T-}" ;;
esac

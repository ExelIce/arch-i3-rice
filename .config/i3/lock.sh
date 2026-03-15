#!/bin/bash

setxkbmap -layout us,ru,kz -option grp:win_space_toggle

i3lock \
--blur=8 \
--clock \
--indicator \
--keylayout 2 \
--radius=110 \
--ring-width=4 \
\
--inside-color=00000088 \
--ring-color=000000ff \
--line-color=00000000 \
--separator-color=00000000 \
\
--keyhl-color=ff4f9aff \
--bshl-color=ff4f9aff \
\
--ringver-color=ff4f9aff \
--insidever-color=00000088 \
\
--ringwrong-color=ff003cff \
--insidewrong-color=00000088 \
\
--verif-color=ff4f9aff \
--wrong-color=ff003cff \
\
--time-color=ffffffff \
--date-color=ffffffff \
--layout-color=ff4f9aff

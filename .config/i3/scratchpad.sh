#!/bin/bash

# Ищем процесс. [a] — хак, чтобы pgrep не нашел сам себя
if pgrep -f "[a]lacritty --class ScratchTerm" > /dev/null; then
    # Если окно уже в системе — достаем/прячем и ставим в центр
    i3-msg "[class=\"ScratchTerm\"] scratchpad show, move position center"
else
    # Если процесса нет — запускаем с нуля
    alacritty --class ScratchTerm &
    # Ждем, пока окно создастся
    sleep 0.3
    # Принудительно закидываем в карман и центрируем
    i3-msg "[class=\"ScratchTerm\"] move scratchpad, scratchpad show, move position center"
fi

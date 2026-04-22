#!/bin/bash

# Ждем микросекунду, чтобы терминал успел отрисоваться
sleep 0.1

# Получаем размеры терминала напрямую через tput
WIDTH=$(tput cols)
HEIGHT=$(tput lines)

# Запускаем анимацию
chafa --symbols braille -c none --size "${WIDTH}x${HEIGHT}" ~/Загрузки/low_cortisol_dance.gif

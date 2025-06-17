#!/bin/bash

# First start the Xephyr with this line
Xephyr :2 -screen 800x600 &
echo "Launched the nested XServer (Xephyr)"

# Wait a bit so nothing breaks
sleep 0.5

# Then run the MaxWM using the Display 2 which is Xephyr XServer
DISPLAY=:2 ./startmaxwm

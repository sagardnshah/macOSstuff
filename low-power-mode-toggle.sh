#!/bin/bash

# Check if Low Power Mode is enabled
lowPowerMode=$(pmset -g | grep "lowpowermode" | awk '{print $2}')

if [ "$lowPowerMode" == "0" ]; then
    # Low Power Mode is currently off, turn it on
    sudo pmset -a lowpowermode 1
    echo "Low Power Mode turned on."
else
    # Low Power Mode is currently on, turn it off
    sudo pmset -a lowpowermode 0
    echo "Low Power Mode turned off."
fi

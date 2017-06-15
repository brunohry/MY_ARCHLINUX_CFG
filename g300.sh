#!/bin/sh
# desativa teclas extras do mouse logtech g300 
# essas teclas quando precionadas estavam causando lentid~ao no sistema
DEVICE_ID=$(xinput list |  grep "Logitech Gaming Mouse G300" | grep keyboard | sed 's/.*id=\([0-9]*\).*/\1/')

if xinput -list-props $DEVICE_ID | grep "Device Enabled" | grep "1$" > /dev/null
then
        xinput set-int-prop $DEVICE_ID "Device Enabled" 8 0
fi
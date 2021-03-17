#!/bin/sh
echo INPUT: rtl_fm Device 1>&2
## Overrides for WBFM for testing a sample sent with a raspberry pi via pifm (yes really)
## DO NOT TRANSMIT ON WEATHER RADIO FREQUENCIES!!! This script is pre-set to 100.5 FM for PiFM
until rtl_fm -f 100.500M -s 22050 -M wbfm -r 22k -E dc -p ${PPM} -g ${GAIN} - |  multimon-ng -t raw -a EAS /dev/stdin; do
    echo Restarting... >&2
    sleep 2
done

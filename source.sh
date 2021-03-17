#!/bin/sh
echo INPUT: rtl_fm Device 1>&2
until rtl_fm -f ${FREQ} -M fm -s 22050 -E dc -p ${PPM} -g ${GAIN}  -|  multimon-ng -t raw -a EAS /dev/stdin; do
    echo Restarting... >&2
    sleep 2
done

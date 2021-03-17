#!/bin/sh
exec python /opt/dsame/dsame.py --source /opt/source.sh --event $EVENT_TYPES --same $SAME_CODES --call /opt/hass_same.sh --command "{EEE}" "{MESSAGE}"

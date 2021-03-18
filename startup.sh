#!/bin/sh
if [ -n "$EVENT_TYPES" ]; then
	DSAME_OPTS="$DSAME_OPTS --event $EVENT_TYPES"
fi
if [ -n "$SAME_CODES" ]; then
	DSAME_OPTS="$DSAME_OPTS --same $SAME_CODES"
fi
exec python /opt/dsame/dsame.py --source /opt/source.sh $DSAME_OPTS --call /opt/hass_same.sh --command \
	"{EEE}" "{ORG}" "{PSSCCC}" "{LLLLLLLL}" "{MESSAGE}"

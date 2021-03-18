#!/bin/sh
curl -X POST -H "Authorization: Bearer $ACCESS_TOKEN" -H "Content-Type: application/json" \
 -d "{\"type\":\"$1\", \"org\":\"$2\", \"same_area\":\"$3\", \"originator\":\"$4\", \"message\":\"$5\" }" $HASS_HOST/api/events/nwr_same

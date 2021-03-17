#!/bin/sh
curl -X POST -H "Authorization: Bearer $ACCESS_TOKEN" -H "Content-Type: application/json" \
 -d "{\"type\":\"$1\",\"message\":\"$2\"}" $HASS_HOST/api/events/nwr_same

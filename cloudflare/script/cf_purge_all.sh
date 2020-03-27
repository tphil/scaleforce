#!/bin/bash
EMAIL=$1
KEY=$2
ZONE_ID=$3
curl -X POST "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/purge_cache" \
     -H "X-Auth-Email: $EMAIL" \
     -H "X-Auth-Key: $KEY" \
     -H "Content-Type: application/json" \
     --data '{"purge_everything":true}'  \
    | python -m json.tool;

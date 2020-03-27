#!/bin/bash
EMAIL=$1
KEY=$2
curl -X GET "https://api.cloudflare.com/client/v4/zones" \
     -H "X-Auth-Email: $1" \
     -H "X-Auth-Key: $2" \
     -H "Content-Type: application/json"

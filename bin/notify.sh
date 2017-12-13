#!/bin/bash
curl -s \
  --form-string "token=$PSH_TKN" \
  --form-string "user=$PSH_USR" \
  --form-string "message=$1" \
    https://api.pushover.net/1/messages.json


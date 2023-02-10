#!/bin/bash

#!/bin/bash
# Ask the user for their name
echo Insert package id:
read id

generate_post_data()
{
  cat <<EOF
{
  "packageIds": [
    "$id"
  ],
  "downloadScope": "SYSTEM_MASTER"
}
EOF
}

curl -X 'POST' \
  'http://localhost:8080/rest/v1/suppliers/1/packages/retrieve-urls' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
--data "$(generate_post_data)" |jq

#!/bin/bash

curl -u pxx:$(gopass show -o fds/reu/qualification/apig/pxx)  -X 'POST' 'https://api-gateway.stg.dev.homeconnectfds.com/1.0/pxx/superDistributionSet'  -H 'accept: */*' -H 'accept: application/problem+json' \
  -H 'Content-Type: application/json' \
  -d @data/superdsoemBad.json |jq
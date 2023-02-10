#!/bin/bash

echo "Wrong method with problem json:"
curl -X 'POST' 'http://localhost:8080/rest/v1/ds/sets/123/details' -H 'accept: application/json' -H 'accept: application/problem+json' |jq
echo "Wrong method without problem json:"
curl -X 'POST' 'http://localhost:8080/rest/v1/ds/sets/123/details' -H 'accept: application/json'

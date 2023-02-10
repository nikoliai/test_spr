#!/bin/bash
echo "DS with problem json:"
curl -X 'GET' 'http://localhost:8080/rest/v1/ds/sets/1891240794604' -H 'accept: application/json' -H 'accept: application/problem+json' |jq
echo "DS without problem json":
curl -X 'GET' 'http://localhost:8080/rest/v1/ds/sets/1891240794604' -H 'accept: application/json'
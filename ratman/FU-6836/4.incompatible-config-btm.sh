#!/bin/bash

echo "incompatible configuration for BTM-package with problem json"
curl -X 'POST' 'http://localhost:8080/rest/v1/btmPackage?configId=5280185292205529727' -H 'accept: */*' -H 'accept: application/problem+json' -d '' | jq
echo "incompatible configuration for BTM-package without problem json"
curl -X 'POST' 'http://localhost:8080/rest/v1/btmPackage?configId=5280185292205529727' -H 'accept: */*' -d ''

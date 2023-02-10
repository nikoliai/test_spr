#!/bin/bash

id=${1}
pack=${2}

#echo Insert package id and pack
#read -r id pack

curl -X 'GET' \
  http://localhost:8080/rest/v1/suppliers/"${id}"/packages/"${pack}"/retrieve-meta \
  -H 'accept: application/json' | jq

# 11628933842192044525
#!/bin/bash

TOKEN=$(curl -X POST "https://keycloak.srv.reu.bsh-lando.com/auth/realms/HC_FDS/protocol/openid-connect/token" -d "grant_type=password&username=fds_technical_user&password=$(gopass show fds/keycloak/users/fds_technical_user)&client_id=demo&client_secret=$(gopass show fds/keycloak/clients/demo/secret)" | jq -r '.access_token')
echo "VALID REQUEST"
curl -s 'http://localhost:8080/rest/v1/toolconfig' -H 'accept: application/json' -H "Authorization: Bearer $TOKEN"  | jq
echo "ENDPOINT DOES NOT EXIST"
curl -s 'http://localhost:8080/rest/v1/toolcoig' -H 'accept: application/json' -H "Authorization: Bearer $TOKEN"  | jq
echo "ELEMENT DOES NOT EXIST"
curl -X 'POST' \
  'http://localhost:8080/rest/v1/config-package/123' \
  -H 'accept: application/octet-stream' \
  -H 'Content-Type: application/json' \
  -d '{
  "packageTarget": "string",
  "toolsVerified": {
    "plmId": "string",
    "version": {
      "major": 0,
      "minor": 0,
      "revision": 0,
      "build": 0
    }
  }
}'  -H "Authorization: Bearer $TOKEN"  | jq
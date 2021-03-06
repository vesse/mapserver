#!/bin/bash

source scripts/helpers.sh

JSON="
{
  \"dataStore\": {
    \"name\": "${DATASTORE_NAME}",
    \"connectionParameters\": {
      \"host\": "${DATABASE_HOST}",
      \"port\": "${DATABASE_PORT}",
      \"database\": "${DATABASE_NAME}",
      \"user\": "${DATABASE_USERNAME}",
      \"passwd\": "${DATABASE_PASSWORD}",
      \"dbtype\": \"postgis\"
    }
  }
}
"

echo "Add data store ${DATASTORE_NAME}:"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/datastores"`"

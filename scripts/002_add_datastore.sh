#!/bin/bash

source scripts/000_shared.sh

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
echo "  `post "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/datastores"`"

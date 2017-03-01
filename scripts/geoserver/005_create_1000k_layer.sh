#!/bin/bash

source scripts/helpers.sh

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland:1000k\",
    \"title\": \"Finland:1000k\",
    \"layers\": {
      \"layer\": [
        \"yk:1000k:hallintoalueraja\"
      ]
    },
    \"styles\": {
      \"style\": [
        \"yk:1000k:borders\"
      ]
    }
  }
}
"

echo "Add 1000k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

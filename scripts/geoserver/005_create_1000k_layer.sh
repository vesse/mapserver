#!/bin/bash

source scripts/helpers.sh

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland:1000k\",
    \"title\": \"Finland:1000k\",
    \"layers\": {
      \"layer\": [
        \"yk_1000k_hallintoalueraja\"
      ]
    },
    \"styles\": {
      \"style\": [
        \"yk_borders\"
      ]
    }
  }
}
"

echo "Add 1000k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

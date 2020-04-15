#!/bin/bash

# Need to check what kind of layers would be good

source scripts/helpers.sh

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland:test\",
    \"title\": \"Finland:test\",
    \"layers\": {
      \"layer\": [
        \"fin:maastotietokanta:polygons\"
      ]
    },
    \"styles\": {
      \"style\": [
        \"fin:maastotietokanta:polygons\"
      ]
    }
  }
}
"

echo "Add test layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

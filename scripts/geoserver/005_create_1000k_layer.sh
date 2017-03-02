#!/bin/bash

source scripts/helpers.sh

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland:1000k\",
    \"title\": \"Finland:1000k\",
    \"layers\": {
      \"layer\": [
        \"yk:1000k:korkeusalue\",
        \"yk:1000k:vesialue\",
        \"yk:1000k:peltoalue\",
        \"yk:1000k:vesiviiva\",
        \"yk:1000k:hallintoalueraja\"
      ]
    },
    \"styles\": {
      \"style\": [
        \"yk:1000k:elevation\",
        \"yk:1000k:water_area\",
        \"yk:1000k:farmfield\",
        \"yk:1000k:water_line\",
        \"yk:1000k:borders\"
      ]
    }
  }
}
"

echo "Add 1000k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

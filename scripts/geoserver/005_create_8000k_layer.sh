#!/bin/bash

source scripts/helpers.sh

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland:8000k\",
    \"title\": \"Finland:8000k\",
    \"layers\": {
      \"layer\": [
        \"yk:4500k:vesialue\",
        \"yk:4500k:vesiviiva8000\",
        \"yk:4500k:tieviiva8000\",
        \"yk:4500k:hallintoalueraja\",
        \"yk:4500k:taajamapiste8000\",
        \"paikannimi\"
      ]
    },
    \"styles\": {
      \"style\": [
        \"yk:4500k:water_area\",
        \"yk:4500k:water_line_8000k\",
        \"yk:4500k:roads_8000k\",
        \"yk:4500k:borders\",
        \"yk:4500k:city_marker_8000k\",
        \"city_labels\"
      ]
    }
  }
}
"

echo "Add 8000k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

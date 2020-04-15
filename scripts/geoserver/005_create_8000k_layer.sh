#!/bin/bash

source scripts/helpers.sh

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland:8000k\",
    \"title\": \"Finland:8000k\",
    \"layers\": {
      \"layer\": [
        \"fin:yk:4500k:korkeusalue\",
        \"fin:yk:4500k:vesialue\",
        \"fin:yk:4500k:vesiviiva8000\",
        \"fin:digiroad\",
        \"fin:yk:4500k:hallintoalueraja\",
        \"fin:yk:4500k:taajamapiste8000\",
        \"fin:paikannimi\"
      ]
    },
    \"styles\": {
      \"style\": [
        \"fin:yk:4500k:elevation\",
        \"fin:yk:4500k:water_area\",
        \"fin:yk:4500k:water_line_8000k\",
        \"fin:yk:4500k:roads_8000k\",
        \"fin:yk:4500k:borders_8000k\",
        \"fin:yk:4500k:city_marker_8000k\",
        \"fin:city_labels\"
      ]
    }
  }
}
"

echo "Add 8000k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"


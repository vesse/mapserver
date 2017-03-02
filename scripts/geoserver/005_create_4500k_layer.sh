#!/bin/bash

source scripts/helpers.sh

# Note: water area, borders and city labels are from 8000k layer since
# there are not different scale data for those. City labels rise on top
# apparently regardless of drawing order which is nice for reuse

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland:4500k\",
    \"title\": \"Finland:4500k\",
    \"layers\": {
      \"layer\": [
        \"yk:4500k:vesiviiva4500\",
        \"yk:4500k:tieviiva4500\",
        \"yk:4500k:rautatieviiva\",
        \"yk:4500k:hallintoalueraja\",
        \"yk:4500k:taajamapiste4500\",
      ]
    },
    \"styles\": {
      \"style\": [
        \"yk:4500k:water_line_4500k\",
        \"yk:4500k:roads_4500k\",
        \"yk:4500k:railroads_4500k\",
        \"yk:4500k:borders_4500k\",
        \"yk:4500k:city_marker_4500k\",
      ]
    }
  }
}
"

echo "Add 4500k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

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
        \"yk_4500k_vesiviiva4500\",
        \"yk_4500k_tieviiva4500\",
        \"yk_4500k_taajamapiste4500\",
      ]
    },
    \"styles\": {
      \"style\": [
        \"yk_water_line_4500k\",
        \"yk_roads_4500k\",
        \"yk_city_marker_4500k\",
      ]
    }
  }
}
"

echo "Add 4500k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

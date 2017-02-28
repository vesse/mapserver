#!/bin/bash

source scripts/helpers.sh

# Note: water area, borders and city labels are from 8000k layer since
# there are not different scale data for those. City labels rise on top
# apparently regardless of drawing order which is nice for reuse.
# Rautatieviiva comes from 4500k layer

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland:2000k\",
    \"title\": \"Finland:2000k\",
    \"layers\": {
      \"layer\": [
        \"yk_4500k_vesiviiva2000\",
        \"yk_4500k_tieviiva2000\",
        \"yk_4500k_taajamapiste2000\"
      ]
    },
    \"styles\": {
      \"style\": [
        \"yk_water_line_2000k\",
        \"yk_roads_2000k\",
        \"yk_city_marker_2000k\",
      ]
    }
  }
}
"

echo "Add 2000k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

#!/bin/bash

source scripts/helpers.sh

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
        \"yk_water_area\",
        \"yk_water_line_4500k\",
        \"yk_roads_4500k\",
        \"yk_borders\",
        \"yk_city_marker_4500k\",
        \"kn_city_labels\"
      ]
    }
  }
}
"

echo "Add 4500k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

#!/bin/bash

source scripts/helpers.sh

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland:8000k\",
    \"title\": \"Finland:8000k\",
    \"layers\": {
      \"layer\": [
        \"yk_4500k_vesialue\",
        \"yk_4500k_vesiviiva8000\",
        \"yk_4500k_tieviiva8000\",
        \"yk_4500k_hallintoalueraja\",
        \"yk_4500k_taajamapiste8000\",
        \"paikannimi\"
      ]
    },
    \"styles\": {
      \"style\": [
        \"yk_water_area\",
        \"yk_water_line_8000k\",
        \"yk_roads_8000k\",
        \"yk_borders\",
        \"yk_city_marker_8000k\",
        \"kn_city_labels\"
      ]
    }
  }
}
"

echo "Add 8000k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

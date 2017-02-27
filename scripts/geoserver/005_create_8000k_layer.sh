#!/bin/bash

source scripts/helpers.sh

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland_8000k\",
    \"title\": \"Finland 8000k\",
    \"layers\": {
      \"layer\": [
        \"yk_4500k_vesialue\",
        \"yk_4500k_vesiviiva8000\",
        \"yk_4500k_tieviiva8000\",
        \"yk_4500k_hallintoalueraja\",
        \"yk_4500k_taajamapiste8000\",
        \"kn_4500k_karttanimi_4500\"
      ]
    },
    \"styles\": {
      \"style\": [
        \"yk_water_area\",
        \"yk_water_line\",
        \"yk_roads\",
        \"yk_borders\",
        \"yk_city_marker\",
        \"kn_city_labels\"
      ]
    }
  }
}
"

echo "Add 4500k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

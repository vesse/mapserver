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
        \"yk_4500k_taajamapiste8000\",
        \"yk_4500k_tieviiva8000\",
        \"yk_4500k_hallintoalueraja\"
      ]
    },
    \"styles\": {
      \"style\": [
        \"yk_water\",
        \"line\",
        \"point\",
        \"yk_roads\",
        \"yk_borders\"
      ]
    }
  }
}
"

echo "Add 4500k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

#!/bin/bash

source scripts/helpers.sh

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland_8000k\",
    \"title\": \"Finland 8000k\",
    \"layers\": {
      \"layer\": [
        \"kuntajako_4500k_suomenmaakuntajako_4500k\",
        \"yk_4500k_vesialue\",
        \"yk_4500k_vesiviiva8000\",
        \"yk_4500k_taajamapiste8000\",
        \"yk_4500k_tieviiva8000\"
      ]
    },
    \"styles\": {
      \"style\": [
        \"polygon\",
        \"yk_water\",
        \"line\",
        \"point\",
        \"yk_roads\"
      ]
    }
  }
}
"

echo "Add 4500k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

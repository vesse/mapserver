#!/bin/bash

source scripts/helpers.sh

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland:1000k\",
    \"title\": \"Finland:1000k\",
    \"layers\": {
      \"layer\": [
        \"yk:1000k:korkeusalue\",
        \"yk:1000k:vesialue\",
        \"yk:1000k:peltoalue\",
        \"yk:1000k:taajamaalue\",
        \"yk:1000k:liikennealue\",
        \"yk:1000k:vesiviiva\",
        \"yk:1000k:tieviiva\",
        \"yk:1000k:hallintoalueraja\",
        \"yk:1000k:taajamapiste\"
      ]
    },
    \"styles\": {
      \"style\": [
        \"yk:1000k:elevation\",
        \"yk:1000k:water_area\",
        \"yk:1000k:farmfield\",
        \"yk:1000k:urban_area\",
        \"yk:1000k:traffic_area\",
        \"yk:1000k:water_line\",
        \"yk:1000k:roads\",
        \"yk:1000k:borders\",
        \"yk:1000k:city_marker\"
      ]
    }
  }
}
"

echo "Add 1000k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

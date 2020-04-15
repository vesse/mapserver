#!/bin/bash

source scripts/helpers.sh

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland:1000k\",
    \"title\": \"Finland:1000k\",
    \"layers\": {
      \"layer\": [
        \"fin:yk:1000k:korkeusalue\",
        \"fin:yk:1000k:vesialue\",
        \"fin:yk:1000k:peltoalue\",
        \"fin:yk:1000k:taajamaalue\",
        \"fin:yk:1000k:liikennealue\",
        \"fin:yk:1000k:vesiviiva\",
        \"fin:yk:1000k:tieviiva\",
        \"fin:yk:1000k:hallintoalueraja\",
        \"fin:yk:1000k:taajamapiste\"
      ]
    },
    \"styles\": {
      \"style\": [
        \"fin:yk:1000k:elevation\",
        \"fin:yk:1000k:water_area\",
        \"fin:yk:1000k:farmfield\",
        \"fin:yk:1000k:urban_area\",
        \"fin:yk:1000k:traffic_area\",
        \"fin:yk:1000k:water_line\",
        \"fin:yk:1000k:roads\",
        \"fin:yk:1000k:borders\",
        \"fin:yk:1000k:city_marker\"
      ]
    }
  }
}
"

echo "Add 1000k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

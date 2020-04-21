#!/bin/bash

source scripts/helpers.sh

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland:8000k\",
    \"title\": \"Finland:8000k\",
    \"layers\": {
      \"layer\": [
        \"fin:yk:4500k:korkeusalue\",
        \"fin:yk:4500k:vesialue\",
        \"fin:yk:4500k:vesiviiva8000\",
        \"fin:digiroad\",
        \"fin:yk:4500k:hallintoalueraja\",
        \"fin:yk:4500k:taajamapiste8000\",
        \"fin:paikannimi\"
      ]
    },
    \"styles\": {
      \"style\": [
        \"fin:yk:4500k:elevation_8000k\",
        \"fin:yk:4500k:water_area_8000k\",
        \"fin:yk:4500k:water_line_8000k\",
        \"fin:digiroad:8000k\",
        \"fin:yk:4500k:borders_8000k\",
        \"fin:yk:4500k:city_marker_8000k\",
        \"fin:city_labels\"
      ]
    }
  }
}
"

echo "Add 8000k layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"


# Note: water area, borders and city labels are from 8000k layer since
# there are not different scale data for those. City labels rise on top
# apparently regardless of drawing order which is nice for reuse

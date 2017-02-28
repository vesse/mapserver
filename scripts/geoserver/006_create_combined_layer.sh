#!/bin/bash

source scripts/helpers.sh

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland\",
    \"title\": \"Finland\",
    \"workspace\": \"Finland\",
    \"publishables\": {
      \"published\": [
        {
          \"@type\": \"layerGroup\",
          \"name\": \"Finland:Finland:8000k\"
        },
        {
          \"@type\": \"layerGroup\",
          \"name\": \"Finland:Finland:4500k\"
        }
      ]
    }
  }
}
"

echo "Add combined layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

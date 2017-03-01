#!/bin/bash

source scripts/helpers.sh

JSON="
{
  \"layerGroup\": {
    \"name\": \"Finland\",
    \"title\": \"Finland\",
    \"workspace\": \"${WORKSPACE_NAME}\",
    \"publishables\": {
      \"published\": [
        {
          \"@type\": \"layerGroup\",
          \"name\": \"${WORKSPACE_NAME}:Finland:8000k\"
        },
        {
          \"@type\": \"layerGroup\",
          \"name\": \"${WORKSPACE_NAME}:Finland:4500k\"
        },
        {
          \"@type\": \"layerGroup\",
          \"name\": \"${WORKSPACE_NAME}:Finland:2000k\"
        }
      ]
    }
  }
}
"

echo "Add combined layer group"
echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/layergroups"`"

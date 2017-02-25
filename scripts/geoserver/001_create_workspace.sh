#!/bin/bash

source scripts/000_shared.sh

JSON="
{
  \"workspace\": {
    \"name\": \"${WORKSPACE_NAME}\"
  }
}
"

echo "Create workspace ${WORKSPACE_NAME}:"
echo "  `post "${JSON}" "rest/workspaces"`"

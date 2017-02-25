#!/bin/bash

source config

read -p "Removing all workspaces from GeoServer. Are you sure? [y/N] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  workspaces=`curl -s \
    -u ${GEOSERVER_USERNAME}:${GEOSERVER_PASSWORD} \
    ${GEOSERVER_URL}rest/workspaces.json \
    | jq -r '.workspaces.workspace | map(.href) | join(" ")'`

  for ws_uri in ${workspaces}; do
    curl -X DELETE \
      -u ${GEOSERVER_USERNAME}:${GEOSERVER_PASSWORD} \
      "${ws_uri}?recurse=true"
  done
fi

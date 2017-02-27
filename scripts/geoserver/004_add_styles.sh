#!/bin/bash

source scripts/helpers.sh

declare -A styles

styles['yk_roads']='yk_roads.sld'
styles['yk_water']='yk_water.sld'
styles['yk_borders']='yk_borders.sld'

function addStyle {
  file=${1}
  uri=${2}

  curl -si -X PUT \
    -H "Content-Type: application/vnd.ogc.sld+xml" \
    -u ${GEOSERVER_USERNAME}:${GEOSERVER_PASSWORD} \
    -d @styles/"${file}" \
    ${GEOSERVER_URL}${uri} \
  | grep -e "^HTTP"
}

for style in ${!styles[@]}; do
  JSON="
  {
    \"style\": {
      \"name\": \"${style}\",
      \"filename\": \"${styles[$style]}\"
    }
  }
  "

  echo "Add style ${style}"
  echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/styles"`"
  echo "  `addStyle "${styles[$style]}" "rest/workspaces/${WORKSPACE_NAME}/styles/${style}"`"
done

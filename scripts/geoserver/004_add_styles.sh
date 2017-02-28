#!/bin/bash

source scripts/helpers.sh

declare -A styles

styles['yk_roads_8000k']='yk_roads_8000k.sld'
styles['yk_roads_4500k']='yk_roads_4500k.sld'
styles['yk_roads_2000k']='yk_roads_2000k.sld'

styles['yk_water_area']='yk_water_area.sld'

styles['yk_water_line_8000k']='yk_water_line_8000k.sld'
styles['yk_water_line_4500k']='yk_water_line_4500k.sld'
styles['yk_water_line_2000k']='yk_water_line_2000k.sld'

styles['yk_borders']='yk_borders.sld'

styles['yk_city_marker_8000k']='yk_city_marker_8000k.sld'
styles['yk_city_marker_4500k']='yk_city_marker_4500k.sld'
styles['yk_city_marker_2000k']='yk_city_marker_2000k.sld'

styles['kn_city_labels']='kn_city_labels.sld'

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

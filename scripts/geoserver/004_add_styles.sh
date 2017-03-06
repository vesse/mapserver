#!/bin/bash

source scripts/helpers.sh

declare -A styles

styles['yk:4500k:roads_8000k']='yk_4500k/yk_4500k_roads_8000k.sld'
styles['yk:4500k:roads_4500k']='yk_4500k/yk_4500k_roads_4500k.sld'
styles['yk:4500k:roads_2000k']='yk_4500k/yk_4500k_roads_2000k.sld'

styles['yk:4500k:railroads_4500k']='yk_4500k/yk_4500k_railroads_4500k.sld'

styles['yk:4500k:water_line_8000k']='yk_4500k/yk_4500k_water_line_8000k.sld'
styles['yk:4500k:water_line_4500k']='yk_4500k/yk_4500k_water_line_4500k.sld'
styles['yk:4500k:water_line_2000k']='yk_4500k/yk_4500k_water_line_2000k.sld'

styles['yk:4500k:city_marker_8000k']='yk_4500k/yk_4500k_city_marker_8000k.sld'
styles['yk:4500k:city_marker_4500k']='yk_4500k/yk_4500k_city_marker_4500k.sld'
styles['yk:4500k:city_marker_2000k']='yk_4500k/yk_4500k_city_marker_2000k.sld'

styles['yk:4500k:borders_8000k']='yk_4500k/yk_4500k_borders_8000k.sld'
styles['yk:4500k:borders_4500k']='yk_4500k/yk_4500k_borders_4500k.sld'
styles['yk:4500k:borders_2000k']='yk_4500k/yk_4500k_borders_2000k.sld'

styles['yk:4500k:water_area']='yk_4500k/yk_4500k_water_area.sld'
styles['yk:4500k:elevation']='yk_4500k/yk_4500k_elevation.sld'


styles['yk:1000k:roads']='yk_1000k/yk_1000k_roads.sld'
styles['yk:1000k:water_line']='yk_1000k/yk_1000k_water_line.sld'
styles['yk:1000k:borders']='yk_1000k/yk_1000k_borders.sld'
styles['yk:1000k:water_area']='yk_1000k/yk_1000k_water_area.sld'
styles['yk:1000k:elevation']='yk_1000k/yk_1000k_elevation.sld'
styles['yk:1000k:farmfield']='yk_1000k/yk_1000k_farmfield.sld'
styles['yk:1000k:city_marker']='yk_1000k/yk_1000k_city_marker.sld'

styles['city_labels']='city_labels.sld'

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

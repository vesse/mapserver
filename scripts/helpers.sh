#!/bin/bash

source config

# Post given JSON payload to given GeoServer end point
#
# param $1 JSON string in single quotes
# param $2 GeoServer REST API endpoint URL
function postGeoserver {
  data=${1}
  uri=${2}

  curl -si \
    -H "Content-Type: text/json" \
    -u ${GEOSERVER_USERNAME}:${GEOSERVER_PASSWORD} \
    -d "${data}" \
    ${GEOSERVER_URL}${uri} \
  | grep -e "^HTTP"
}

# rsync given resource from Kapsi to given folder
#
# param $1 Target folder
# param $2 MML rsync folder in Kapsi
function rsyncKapsi {
  folder=${1}
  rsyncFolder=${2}

  mkdir -p "${folder}"
  pushd "${folder}" > /dev/null
  rsync -arPv "tiedostot.kartat.kapsi.fi::mml/${rsyncFolder}" .
  find . -name '*.zip' -exec unzip -o '{}' -d unzipped \;
  popd > /dev/null
}

# Import given files from given folder
#
# param $1 Source folder
# param $2 Table base name
# param $3 List of files to import
function importData {
  folder=${1}
  table_basename=${2}
  shift
  shift
  files=("${@}")

  pushd "${folder}" > /dev/null

  yearpattern='(.*)_[0-9]{4}_(.*)'

  for f in ${files[@]}; do
    if [ -f ${f} ]; then
      table_name="${table_basename}_${f%.*}"
      table_name="${table_name,,}"

      # Remove _year_ which is at least in municipality limits
      while [[ $table_name =~ $yearpattern ]]; do
        table_name=${BASH_REMATCH[1]}_${BASH_REMATCH[2]}
      done

      PG_USE_COPY=YES ogr2ogr \
        -f "PostgreSQL" PG:"${PGCONN}" \
        -s_srs "EPSG:3067" \
        -t_srs "EPSG:3067" \
        -append \
        -nln ${table_name} ${f}
    else
      (>&2 echo "ERROR: File ${f} does not exist")
      exit
    fi
  done

  popd > /dev/null
}

function execSql {
  command=${1}
  psql -h ${DATABASE_HOST} -p ${DATABASE_PORT} -U ${DATABASE_USERNAME} -c "${command}" ${DATABASE_NAME}
}

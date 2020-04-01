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
# param $3 Filter
# param $4 1 table base name only, 0 to append file name to base name
# param $4 List of files to import
function importData {
  folder=${1}
  table_basename=${2}
  filter=${3}
  basename_only=${4}

  shift
  shift
  shift
  shift
  files=("${@}")

  pushd "${folder}" > /dev/null

  # Add underscore if base name is not empty and file name will be appended
  if [ ! -z "${table_basename}" ]; then
    if [ $basename_only = 0 ]; then
      table_basename="${table_basename}_"
    fi
  elif [ $basename_only = 1 ]; then
    (>&2 echo "ERROR: Cannot use basename only without basename")
    exit
  fi

  yearpattern='(.*)_[0-9]{4}_(.*)'

  for f in ${files[@]}; do
    if [ -f ${f} ]; then
      # Table name is basename + file name without exentension
      if [ $basename_only = 0 ]; then
        table_name="${table_basename}${f%.*}"
      else
        table_name="${table_basename}"
      fi
      # Bash 4 non-posix lowercase
      table_name="${table_name,,}"

      # Remove _year_ which is at least in municipality limits
      # TODO: Seems there no such thing nowadays?
      while [[ $table_name =~ $yearpattern ]]; do
        table_name=${BASH_REMATCH[1]}_${BASH_REMATCH[2]}
      done

      PG_USE_COPY=YES ogr2ogr \
        -f "PostgreSQL" PG:"${PGCONN}" \
        -s_srs "EPSG:3067" \
        -t_srs "EPSG:3067" \
        -append \
        -where "${filter}" \
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

#!/bin/bash

source config

function post {
  curl -si \
    -H "Content-Type: text/json" \
    -u ${GEOSERVER_USERNAME}:${GEOSERVER_PASSWORD} \
    -d "${1}" \
    ${GEOSERVER_URL}${2} \
  | grep -e "^HTTP"
}

function rsync {
  mkdir -p "${1}"
  pushd "${1}"
  rsync -arPv "tiedostot.kartat.kapsi.fi::mml/${2}" .
  find . -name '*.zip' -exec unzip -o '{}' -d unzipped \;
  popd
}

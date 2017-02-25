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

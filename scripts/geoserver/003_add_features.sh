#!/bin/bash

source scripts/helpers.sh

features=(
  kuntajako_4500k_suomenmaakuntajako_4500k
  yk_4500k_hallintoalueraja
  yk_4500k_karttanimipiste2000
  yk_4500k_karttanimipiste4500
  yk_4500k_rautatieviiva
  yk_4500k_tieviiva2000
  yk_4500k_tieviiva4500
  yk_4500k_vesialue
  yk_4500k_vesiviiva2000
  yk_4500k_vesiviiva4500
)

for feature in ${features[@]}; do
  JSON="
  {
    \"featureType\": {
      \"name\": "${feature}"
    }
  }
  "

  echo "Add feature type ${feature}:"
  echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/datastores/${DATASTORE_NAME}/featuretypes"`"
done
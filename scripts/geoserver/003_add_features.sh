#!/bin/bash

source scripts/helpers.sh

declare -A features

features['fin:yk:4500k:hallintoalueraja']='yk_4500k_hallintoalueraja'
features['fin:yk:4500k:taajamapiste2000']='yk_4500k_taajamapiste2000'
features['fin:yk:4500k:taajamapiste4500']='yk_4500k_taajamapiste4500'
features['fin:yk:4500k:taajamapiste8000']='yk_4500k_taajamapiste8000'
features['fin:yk:4500k:rautatieviiva']='yk_4500k_rautatieviiva'
# features['fin:yk:4500k:tieviiva2000']='yk_4500k_tieviiva2000'
# features['fin:yk:4500k:tieviiva4500']='yk_4500k_tieviiva4500'
# features['fin:yk:4500k:tieviiva8000']='yk_4500k_tieviiva8000'
features['fin:yk:4500k:vesialue']='yk_4500k_vesialue'
features['fin:yk:4500k:korkeusalue']='yk_4500k_korkeusalue'
features['fin:yk:4500k:vesiviiva2000']='yk_4500k_vesiviiva2000'
features['fin:yk:4500k:vesiviiva4500']='yk_4500k_vesiviiva4500'
features['fin:yk:4500k:vesiviiva8000']='yk_4500k_vesiviiva8000'

features['fin:yk:1000k:hallintoalueraja']='yk_1000k_hallintoalueraja'
features['fin:yk:1000k:korkeusalue']='yk_1000k_korkeusalue'
features['fin:yk:1000k:liikennealue']='yk_1000k_liikennealue'
features['fin:yk:1000k:peltoalue']='yk_1000k_peltoalue'
features['fin:yk:1000k:rautatieviiva']='yk_1000k_rautatieviiva'
features['fin:yk:1000k:taajamaalue']='yk_1000k_taajamaalue'
features['fin:yk:1000k:taajamapiste']='yk_1000k_taajamapiste'
# features['fin:yk:1000k:tieviiva']='yk_1000k_tieviiva'
features['fin:yk:1000k:vesialue']='yk_1000k_vesialue'
features['fin:yk:1000k:vesiviiva']='yk_1000k_vesiviiva'

features['fin:paikannimi']='paikannimi'

features['fin:digiroad']='dr_linkki'

features['fin:maastotietokanta:polygons']='maastotietokanta_p'
features['fin:maastotietokanta:lines']='maastotietokanta_v'

for feature in ${!features[@]}; do
  JSON="
  {
    \"featureType\": {
      \"name\": \"${feature}\",
      \"title\": \"${feature}\",
      \"nativeName\": \"${features[$feature]}\"
    }
  }
  "

  echo "Add feature type ${feature}:"
  echo "  `postGeoserver "${JSON}" "rest/workspaces/${WORKSPACE_NAME}/datastores/${DATASTORE_NAME}/featuretypes"`"
done

#!/bin/bash

declare -A mapnames

mapnames['4500k']='http://kartat.kapsi.fi/files/nimisto/karttanimet_4500/etrs89/gml/karttanimet_4500_2017_01.zip'
mapnames['1000k']='http://kartat.kapsi.fi/files/nimisto/karttanimet_1000/etrs89/gml/karttanimet_1000_2017_01.zip'

for scale in ${!mapnames[@]}; do
  mkdir -p "data/003_karttanimet_${scale}"
  pushd "data/003_karttanimet_${scale}"
  wget "${mapnames[${scale}]}"
  unzip -j -o *.zip
  popd
done

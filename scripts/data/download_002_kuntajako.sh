#!/bin/bash

declare -A municipalities

municipalities['4500k']='http://kartat.kapsi.fi/files/kuntajako/kuntajako_4500k/etrs89/shp/TietoaKuntajaosta_2017_4500k.zip'
municipalities['1000k']='http://kartat.kapsi.fi/files/kuntajako/kuntajako_1000k/etrs89/shp/TietoaKuntajaosta_2017_1000k.zip'
municipalities['0250k']='http://kartat.kapsi.fi/files/kuntajako/kuntajako_250k/etrs89/shp/TietoaKuntajaosta_2017_250k.zip'
municipalities['0100k']='http://kartat.kapsi.fi/files/kuntajako/kuntajako_100k/etrs89/shp/TietoaKuntajaosta_2017_100k.zip'
municipalities['0010k']='http://kartat.kapsi.fi/files/kuntajako/kuntajako_10k/etrs89/shp/Tietoakuntajaosta_2015_10k.zip'

for scale in ${!municipalities[@]}; do
  mkdir -p "data/002_kuntajako_${scale}"
  pushd "data/002_kuntajako_${scale}"
  wget "${municipalities[${scale}]}"
  unzip -j *.zip
  popd
done

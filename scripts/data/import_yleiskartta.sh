#!/bin/bash

# http://www.maanmittauslaitos.fi/sites/default/files/yleiskartta_1milj_koodit.pdf

source scripts/helpers.sh

files=(
  HallintoalueRaja.shp
  RautatieViiva.shp
  TieViiva8000.shp
  TieViiva4500.shp
  TieViiva2000.shp
  VesiAlue.shp
  VesiViiva8000.shp
  VesiViiva4500.shp
  VesiViiva2000.shp
  TaajamaPiste8000.shp
  TaajamaPiste4500.shp
  TaajamaPiste2000.shp
)

echo "Import yleiskartta 4500k"
importData "data/yleiskartta_4500k/unzipped" "yk_4500k" "" "${files[@]}"

execSql 'CREATE INDEX yk_4500k_hallintoalueraja_kohdeluokk_idx ON yk_4500k_hallintoalueraja(kohdeluokk)'

execSql 'CREATE INDEX yk_4500k_taajamapiste8000_asukasluok_idx ON yk_4500k_taajamapiste8000(asukasluok)'
execSql 'CREATE INDEX yk_4500k_taajamapiste4500_asukasluok_idx ON yk_4500k_taajamapiste4500(asukasluok)'
execSql 'CREATE INDEX yk_4500k_taajamapiste2000_asukasluok_idx ON yk_4500k_taajamapiste2000(asukasluok)'

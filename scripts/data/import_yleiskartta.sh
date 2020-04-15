#!/bin/bash

# http://www.maanmittauslaitos.fi/sites/default/files/yleiskartta_45milj_koodit.pdf
# http://www.maanmittauslaitos.fi/sites/default/files/yleiskartta_1milj_koodit.pdf

source scripts/helpers.sh

files4500k=(
  HallintoalueRaja.shp
  RautatieViiva.shp
  # TieViiva8000.shp
  # TieViiva4500.shp
  # TieViiva2000.shp
  VesiAlue.shp
  VesiViiva8000.shp
  VesiViiva4500.shp
  VesiViiva2000.shp
  TaajamaPiste8000.shp
  TaajamaPiste4500.shp
  TaajamaPiste2000.shp
  KorkeusAlue.shp
)

files1000k=(
  HallintoalueRaja.shp
  KorkeusAlue.shp
  LiikenneAlue.shp
  PeltoAlue.shp
  RautatieViiva.shp
  TaajamaAlue.shp
  TaajamaPiste.shp
  # TieViiva.shp
  VesiAlue.shp
  VesiViiva.shp
  LentokenttaPiste.shp
)

echo "Import yleiskartta 4500k"
importData "data/yleiskartta_4500k" "yk_4500k" "" 0 "${files4500k[@]}"

execSql 'CREATE INDEX yk_4500k_hallintoalueraja_kohdeluokk_idx ON yk_4500k_hallintoalueraja(kohdeluokk)'

execSql 'CREATE INDEX yk_4500k_taajamapiste8000_asukasluok_idx ON yk_4500k_taajamapiste8000(asukasluok)'
execSql 'CREATE INDEX yk_4500k_taajamapiste4500_asukasluok_idx ON yk_4500k_taajamapiste4500(asukasluok)'
execSql 'CREATE INDEX yk_4500k_taajamapiste2000_asukasluok_idx ON yk_4500k_taajamapiste2000(asukasluok)'

echo "Import yleiskartta 1000k"
importData "data/yleiskartta_1000k" "yk_1000k" "" 0 "${files1000k[@]}"

execSql 'CREATE INDEX yk_1000k_hallintoalueraja_kohdeluokk_idx ON yk_1000k_hallintoalueraja(kohdeluokk)'
execSql 'CREATE INDEX yk_1000k_vesiviiva_kohdeluokk_idx ON yk_1000k_vesiviiva(kohdeluokk)'
# execSql 'CREATE INDEX yk_1000k_tieviiva_tieluokka_idx ON yk_1000k_tieviiva(tieluokka)'

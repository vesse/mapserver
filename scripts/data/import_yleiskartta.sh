#!/bin/bash

# http://www.maanmittauslaitos.fi/sites/default/files/yleiskartta_45milj_koodit.pdf
# http://www.maanmittauslaitos.fi/sites/default/files/yleiskartta_1milj_koodit.pdf

source scripts/helpers.sh

files4500k=(
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
  KorkeusAlue.shp
)

files1000k=(
  HallintoalueRaja.shp
  KorkeusAlue.shp
  MaaAlue.shp
  LiikenneAlue.shp
  PeltoAlue.shp
  RautatieViiva.shp
  TaajamaAlue.shp
  TaajamaPiste.shp
  TieViiva.shp
  VesiAlue.shp
  VesiViiva.shp
)

echo "Import yleiskartta 4500k"
importData "data/yleiskartta_4500k/unzipped" "yk_4500k" "" "${files4500k[@]}"

execSql 'CREATE INDEX yk_4500k_hallintoalueraja_kohdeluokk_idx ON yk_4500k_hallintoalueraja(kohdeluokk)'

execSql 'CREATE INDEX yk_4500k_taajamapiste8000_asukasluok_idx ON yk_4500k_taajamapiste8000(asukasluok)'
execSql 'CREATE INDEX yk_4500k_taajamapiste4500_asukasluok_idx ON yk_4500k_taajamapiste4500(asukasluok)'
execSql 'CREATE INDEX yk_4500k_taajamapiste2000_asukasluok_idx ON yk_4500k_taajamapiste2000(asukasluok)'
execSql 'CREATE INDEX yk_4500k_korkeusalue_korkeus_idx ON yk_4500k_korkeusalue(korkeus)'


echo "Import yleiskartta 1000k"
importData "data/yleiskartta_1000k/unzipped" "yk_1000k" "" "${files1000k[@]}"

execSql 'CREATE INDEX yk_1000k_hallintoalueraja_kohdeluokk_idx ON yk_1000k_hallintoalueraja(kohdeluokk)'
execSql 'CREATE INDEX yk_1000k_vesiviiva_kohdeluokk_idx ON yk_1000k_vesiviiva(kohdeluokk)'
execSql 'CREATE INDEX yk_1000k_korkeusalue_korkeus_idx ON yk_1000k_korkeusalue(korkeus)'

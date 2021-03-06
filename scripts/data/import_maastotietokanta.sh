#!/bin/bash

# http://www.maanmittauslaitos.fi/sites/maanmittauslaitos.fi/files/attachments/2019/12/maastotietokanta_kohdemalli.xlsx
# https://www.maanmittauslaitos.fi/sites/maanmittauslaitos.fi/files/attachments/2018/03/Maastotietokohteet_0.pdf


source scripts/helpers.sh

pushd "data/maastotietokanta"
mkdir -p "tmp"

# https://stackoverflow.com/a/17841619/3349511
function join_by { local IFS="$1"; shift; echo "$*"; }

AREAS=(
  33200 # Hautausmaa
  34300 # Hietikko
  32300 # Kaatopaikka

  32411 # Kiitotie
  32412
  32413 # Lentokenttäalue
  32415
  32416
  32414 # Lentoliikennealue (todo: check)
  32417
  32418

  32611 # Pelto
  32612 # Puutarha
  32800 # Niitty
  32900 # Puisto

  33100 # Urheilualue

  36200 # Järvivesi
  36211 # Merivesi
  36313 # Virtavesialue

  42210 # Rakennukset
  42211
  42212
  42220
  42221
  42222
  42230
  42231
  42232
  42240
  42241
  42242
  42270
  42250
  42251
  42252
  42260
  42261
  42262

  72200 # Luonnonsuojelualue
  72201 # Luonnonpuisto
  72202 # Kansallispuisto
  72800 # Retkeilyalue
  72500 # Suojametsä

  40200 # Taajaan asuttu alue
)

LINES=(
  84113 # Kunnan raja
  84115 # Maakunnan raja

  36311 # Virtavesi <2m
  36312 # Virtavesi 2-5m
  38200 # Koski

  45111 # Pistolaituri
  45112 # Pistolaituri

  12313 # Polku
  12314 # Kävely- ja pyörätie
  12316 # Ajopolku
)

_areas=$(join_by , "${AREAS[@]}")
_lines=$(join_by , "${LINES[@]}")


for f in *.zip; do
  # TODO: Import all areas later
  # TODO: Should different geometry types go to different tables?
  #       Or maybe _p _v etc. to their own? Probably latter as the import fails
  #       of putting polygons to point tables.
  if [[ $f =~ M4 ]]; then
    unzip $f -d ./tmp >/dev/null
    pushd tmp >/dev/null
    # Maastotietokanta zip files contain multiple files. Files with certain suffix
    # contain only certain types of geometries. Import them to separate database tables
    # _p.shp: polygon
    # _v.shp: line
    # _s.shp: point
    # _t.shp: text

    if ls *_p.shp >/dev/null 2>&1; then
      importData "." "maastotietokanta_p" "LUOKKA IN (${_areas})" 1 "*_p.shp"
    fi

    if ls *_v.shp >/dev/null 2>&1; then
      importData "." "maastotietokanta_v" "LUOKKA IN (${_lines})" 1 "*_v.shp"
    fi

    # if ls *_s.shp >/dev/null 2>&1; then
    #   importData "." "maastotietokanta_s" "" 1 "*_s.shp"
    # fi

    # if ls *_t.shp >/dev/null 2>&1; then
    #   importData "." "maastotietokanta_t" "" 1 "*_t.shp"
    # fi

    popd
    rm tmp/*
  fi
done

execSql 'CREATE INDEX maastotietokanta_p_luokka_idx ON maastotietokanta_p(luokka)'
execSql 'CREATE INDEX maastotietokanta_v_luokka_idx ON maastotietokanta_v(luokka)'

popd

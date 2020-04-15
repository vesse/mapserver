#!/bin/bash

source scripts/helpers.sh

echo "Import Digiroad"

for d in data/digiroad/KokoSuomi_DIGIROAD_R/*; do
  if [ -d "$d" ]; then
    for nd in $d/*; do
      if [ -f "${nd}/DR_LINKKI.shp" ]; then
        importData "${nd}" "" "" 0 "DR_LINKKI.shp"
      fi
    done
  fi
done

execSql 'CREATE INDEX dr_linkki_toiminn_lk_idx ON dr_linkki(toiminn_lk)'

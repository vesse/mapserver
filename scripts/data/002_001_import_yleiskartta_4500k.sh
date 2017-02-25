#!/bin/bash

source config

pushd data/001_yleiskartta_4500k/unzipped

point_pattern=".*piste.*"

for f in *.shp; do
  table_name="yk_4500k_${f%.*}"
  table_name="${table_name,,}"

  if [[ $table_name =~ $point_pattern ]]; then
    nlt=POINT
  else
    nlt=MULTILINESTRING
  fi

  PG_USE_COPY=YES ogr2ogr \
    -f "PostgreSQL" PG:"${PGCONN}" \
    -s_srs "EPSG:3067" \
    -t_srs "EPSG:3067" \
    -nlt ${nlt} \
    -append \
    -nln ${table_name} ${f}
done

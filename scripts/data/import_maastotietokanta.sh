#!/bin/bash

# http://www.maanmittauslaitos.fi/sites/maanmittauslaitos.fi/files/attachments/2019/12/maastotietokanta_kohdemalli.xlsx
# https://www.maanmittauslaitos.fi/sites/maanmittauslaitos.fi/files/attachments/2018/03/Maastotietokohteet_0.pdf


source scripts/helpers.sh

pushd "data/maastotietokanta"

for d in $(find . -type d); do
  pushd $d >/dev/null

  count=`ls -1 *.shp.zip 2>/dev/null | wc -l`
  if [ $count != 0 ]; then
    echo "PROCESS $d"
    unzip -j -o *.zip
    rm *.shp
  fi

  popd >/dev/null
done

popd

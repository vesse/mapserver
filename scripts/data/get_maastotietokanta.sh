#!/bin/bash

#source scripts/helpers.sh

# TODO: Kapsi rsync is not responding
#rsyncKapsi "data/maastotietokanta" "maastotietokanta/kaikki/etrs89/gml/P5/P54"

mkdir -p "data/maastotietokanta"
pushd "data/maastotietokanta" >/dev/null
echo "Start mirroring from kartat.kapsi.fi in quiet mode. This will take time."
wget -m -np http://kartat.kapsi.fi/files/maastotietokanta/kaikki/etrs89/shp/
find . -name "*.html" -exec rm {} \;
echo "Done mirroring"
popd >/dev/null

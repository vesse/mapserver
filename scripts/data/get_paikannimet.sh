#!/bin/bash

mkdir -p "data/paikannimet"
pushd "data/paikannimet"
wget http://kartat.kapsi.fi/files/nimisto/paikannimet_kaikki/etrs89/gml/paikannimet_2019_09.zip
unzip -j -o *.zip
popd

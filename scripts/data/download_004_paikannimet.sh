#!/bin/bash

mkdir -p "data/004_paikannimet"
pushd "data/004_paikannimet"
wget http://kartat.kapsi.fi/files/nimisto/paikannimet_kaikki/etrs89/gml/paikannimet_2017_01.zip
unzip -j -o *.zip
popd

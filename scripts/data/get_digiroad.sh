#!/bin/bash

mkdir -p "data/digiroad"
pushd "data/digiroad"
wget -O KokoSuomi_DIGIROAD_R_EUREF-FIN.zip https://aineistot.vayla.fi/digiroad/latest/KokoSuomi_DIGIROAD_R_EUREF-FIN.zip
unzip -o "*.zip"
popd

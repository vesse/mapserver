#!/bin/bash

mkdir -p "data/digiroad"
pushd "data/digiroad"
wget -O KokoSuomi_DIGIROAD_R_EUREF-FIN.zip "https://api.vaylapilvi.fi/ava/hakemisto/ava/Tiest%C3%B6tiedot/Digiroad/Digiroad-irrotusaineistot/latest/KokoSuomi_DIGIROAD_R_EUREF-FIN.zip"
unzip -o "*.zip"
popd

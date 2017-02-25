#!/bin/bash

mkdir -p data/001_yleiskartta_4500k
pushd data/001_yleiskartta_4500k
rsync -arPv tiedostot.kartat.kapsi.fi::mml/yleiskartta_4500k/kaikki/etrs89/shape/ .
find . -name '*.zip' -exec unzip -o '{}' -d unzipped \;
popd

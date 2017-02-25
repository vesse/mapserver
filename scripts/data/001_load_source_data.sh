#!/bin/bash

mkdir -p data/maastokartta_250k
pushd data/maastokartta_250k
rsync -arPv tiedostot.kartat.kapsi.fi::mml/maastokartta_250k/kaikki/etrs89/shp .
popd

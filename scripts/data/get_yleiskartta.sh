#!/bin/bash

mkdir -p "data/yleiskartta_4500k"
pushd "data/yleiskartta_4500k"
wget -O 4_5_milj_shape_etrs-tm35fin.zip http://kartat.kapsi.fi/files/yleiskartta_4500k/kaikki/etrs89/shape/4_5_milj_shape_etrs-tm35fin.zip
unzip -j -o "*.zip"
popd

mkdir -p "data/yleiskartta_1000k"
pushd "data/yleiskartta_1000k"
wget -O 1_milj_Shape_etrs_shape.zip http://kartat.kapsi.fi/files/yleiskartta_1000k/kaikki/etrs89/shape/1_milj_Shape_etrs_shape.zip
unzip -j -o "*.zip"
popd

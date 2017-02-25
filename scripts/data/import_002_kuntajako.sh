#!/bin/bash

source scripts/helpers.sh

scales=(4500k 1000k 0250k 0100k 0010k)

municipalities_4500k=(SuomenMaakuntajako_2017_4500k.shp)
#municipalities['1000k']=
#municipalities['0250k']=
#municipalities['0100k']=
#municipalities['0010k']=

echo "Import kuntajako 4500k"
importData "data/002_kuntajako_4500k" "kuntajako_4500k" "${municipalities_4500k[@]}"

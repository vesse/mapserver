#!/bin/bash

source scripts/helpers.sh

municipalities_4500k=(SuomenMaakuntajako_2017_4500k.shp)

echo "Import kuntajako 4500k"
importData "data/002_kuntajako_4500k" "kuntajako_4500k" "${municipalities_4500k[@]}"

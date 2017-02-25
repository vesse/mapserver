#!/bin/bash

source scripts/helpers.sh

files=(
  HallintoalueRaja.shp
  RautatieViiva.shp
  TieViiva8000.shp
  TieViiva4500.shp
  TieViiva2000.shp
  VesiAlue.shp
  VesiViiva8000.shp
  VesiViiva4500.shp
  VesiViiva2000.shp
  TaajamaPiste8000.shp
  TaajamaPiste4500.shp
  TaajamaPiste2000.shp
)

echo "Import yleiskartta 4500k"
importData "data/001_yleiskartta_4500k/unzipped" "yk_4500k" "${files[@]}"

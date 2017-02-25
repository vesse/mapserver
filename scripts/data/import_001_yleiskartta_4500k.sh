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
)

importData "data/001_yleiskartta_4500k/unzipped" "yk_4500k" "${files[@]}"

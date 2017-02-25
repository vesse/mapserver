#!/bin/bash

source scripts/helpers.sh

files=(
  HallintoalueRaja.shp
  RautatieViiva.shp
  TieViiva4500.shp
  TieViiva2000.shp
  VesiAlue.shp
  VesiViiva4500.shp
  VesiViiva2000.shp
  KarttanimiPiste4500.shp
  KarttanimiPiste2000.shp
)

importData "data/001_yleiskartta_4500k/unzipped" "yk_4500k" "${files[@]}"

#!/bin/bash

source scripts/helpers.sh

names_4500k=(karttanimi_4500.xml)

echo "Import karttanimet 4500k"
importData "data/003_karttanimet_4500k" "" "${names_4500k[@]}"

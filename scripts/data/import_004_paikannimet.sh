#!/bin/bash

source scripts/helpers.sh

echo "Import paikannimet"
importData "data/004_paikannimet" "" "paikannimi.xml"

#!/bin/bash

source scripts/helpers.sh

echo "Import paikannimet"
importData "data/paikannimet" "" "\"kieliKoodi\"='fin'" 0 "paikannimi.xml"

execSql 'CREATE INDEX paikannimi_mittakaavarelevanssikoodi_idx ON paikannimi(mittakaavarelevanssikoodi)'

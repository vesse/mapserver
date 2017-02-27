#!/bin/bash

source scripts/helpers.sh

echo "Import paikannimet"
importData "data/paikannimet" "" "\"kieliKoodi\"='fin'" "paikannimi.xml"

execSql 'CREATE INDEX paikannimi_mittakaavarelevanssikoodi_idx ON paikannimi(mittakaavarelevanssikoodi)'

#!/bin/bash

source scripts/helpers.sh

echo "Import paikannimet"
importData "data/004_paikannimet" "" "paikannimi.xml"

execSql 'CREATE INDEX paikannimi_kielikoodi_mittakaavarelevanssikoodi_idx ON paikannimi(mittakaavarelevanssikoodi, kielikoodi)'

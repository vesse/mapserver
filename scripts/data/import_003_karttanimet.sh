#!/bin/bash

source scripts/helpers.sh

names_4500k=(karttanimi_4500.xml)

echo "Import karttanimet 4500k"
importData "data/003_karttanimet_4500k" "kn_4500k" "${names_4500k[@]}"

execSql 'CREATE INDEX kn_4500k_karttanimi_4500_kielikoodi_idx ON kn_4500k_karttanimi_4500(kielikoodi)'

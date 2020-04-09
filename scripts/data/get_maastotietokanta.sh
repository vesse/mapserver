#!/bin/bash

source config

initial_uri="https://tiedostopalvelu.maanmittauslaitos.fi/tp/feed/mtp/maastotietokanta/kaikki?api_key=${MML_API_KEY}&format=application/x-shapefile"
tmp_file="./maastotietokanta.xml"

mkdir -p "data/maastotietokanta"
pushd "data/maastotietokanta"

url=$initial_uri
while [ ! -z "${url}" ]; do
  curl -o ${tmp_file} "${url}"

  # Download all files from the listing
  # xmlstarlet is picky with xmlns set in source document
  xml sel \
    -N x="http://www.w3.org/2005/Atom" \
    -t -v "//x:feed/x:entry/x:link/@href" ${tmp_file} \
    | perl -MHTML::Entities -pe 'decode_entities($_);' \
    | wget --content-disposition -i -

  # See if there is more data to download - the XML contains maximum of 1000 entries
  url=`xml sel -N x="http://www.w3.org/2005/Atom" -t -v "//x:feed/x:link[@rel='next']/@href" ${tmp_file} | perl -MHTML::Entities -pe 'decode_entities($_);'`
done

rm ${tmp_file}

popd

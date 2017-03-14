# Finnish GeoServer map

## Requirements

```bash
sudo apt-get install postgresql postgis curl wget jq
```

## Database

Create a user and a database

```bash
sudo su - postgres -c "createuser mapuser -PE"
sudo su - postgres -c "createdb -O mapuser finland"
sudo su - postgres -c "echo CREATE extension IF NOT EXISTS postgis|psql finland"
```

## GeoServer

```bash
wget http://sourceforge.net/projects/geoserver/files/GeoServer/2.10.2/geoserver-2.10.2-bin.zip
unzip geoserver-2.10.2-bin.zip
ln -s geoserver-2.10.2 geoserver
cp fonts/* geoserver/data_dir/styles/
GEOSERVER_HOME="$(pwd)/geoserver" geoserver/bin/startup.sh
```

### JAI

Installing Java Advanced Imaging API is optional but [recommended](http://docs.geoserver.org/latest/en/user/production/java.html). Linux binaries can be found from [here](http://data.opengeo.org/suite/jai/).

```
wget http://data.opengeo.org/suite/jai/jai-1_1_3-lib-linux-amd64-jdk.bin
wget http://data.opengeo.org/suite/jai/jai_imageio-1_1-lib-linux-amd64-jdk.bin
chmod u+x jai*
export JAIDIR=`pwd`
pushd $JAVA_HOME
sudo $JAIDIR/jai-1_1_3-lib-linux-amd64-jdk.bin
sudo _POSIX2_VERSION=199209 $JAIDIR/jai_imageio-1_1-lib-linux-amd64-jdk.bin
popd
rm geoserver/webapps/geoserver/WEB-INF/lib/jai_*
```

## TODO

- Convert styles to YSLD and use the YSLD extension
- Airport icons (lentokenttapiste is imported but not used now)

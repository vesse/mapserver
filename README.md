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

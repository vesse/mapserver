# Finnish GeoServer map

This is a work in progress and might stay as such for quite a while, but might be useful starting point at least if you need to setup GeoServer with data from National Land Survey of Finland (Maanmittauslaitos / MML in Finnish).

Currently data is imported and styled to zoom in up to 1:545k scale, after that need to switch to Maastotietokanta which is not even started and requires to most amount of work in picking the relevant data and defining the styles.

### Screen shots

<a href="https://raw.githubusercontent.com/vesse/mapserver/master/screenshots/1_1M.png">
  <img src="https://raw.githubusercontent.com/vesse/mapserver/master/screenshots/1_9M.png"
       height="200"
       alt="1:9M">
</a>

## Requirements

This has been developed on Ubuntu which I use for development so some dependencies are probably missing due to them already existing in my dev env. Java for one is obviously needed for GeoServer. I've used Java 8 when writing these.

```bash
sudo apt-get install postgresql postgis curl wget jq gdal-bin
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
wget http://sourceforge.net/projects/geoserver/files/GeoServer/2.16.0/geoserver-2.16.0-bin.zip
unzip geoserver-2.16.0-bin.zip
ln -s geoserver-2.16.0 geoserver
cp fonts/* geoserver/data_dir/styles/
GEOSERVER_HOME="$(pwd)/geoserver" geoserver/bin/startup.sh
```

## Import data

Data import is done a bunch of scripts. Scripts are configured with values defined in `config` and you need to change at least `DATABASE_PASSWORD`. 

### Get data

```bash
./scripts/data/get_paikannimet.sh
./scripts/data/get_yleiskartta.sh
```

### Import to DB

Import scripts do not necessarily import all available data but just those that I've found useful for this particular map. See the scripts if you wish to have more data imported. New styles for GeoServer are of course needed to have the data visible. Also, create indices for columns which are used for filtering with `ogc:Filter` in the styles.

```bash
./scripts/data/import_paikannimet.sh
./scripts/data/import_yleiskartta.sh
```

### Add layers to GeoServer

The currently existing scripts for layer configrations are in `scripts/geoserver` and they're numbered in order of execution. Helper `./scripts/geoserver/run_all.sh` run them all, but do not that it **deletes existing workspaces and styles** so please don't run it against your production GeoServer.

### Test

1. Go to [http://localhost:8080/geoserver/](http://localhost:8080/geoserver/) 
2. Login with GeoServer default credentials `admin` / `geoserver`
3. Go to _Layer Preview_
4. Look for _Finland_ and click open the _OpenLayers_ preview 
5. Zoom and see how it works

## TODO

- Create the last zoom levels from maastotietokanta
- Switch road network to Digiroad
- Convert styles to YSLD and use the YSLD extension
- Airport icons (lentokenttapiste is imported but not used now)

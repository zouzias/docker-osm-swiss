# docker-osm-swiss

Docker file for bootstrapping a postgres database with Open Street Map data for Switzerland imported.


### Usage

Assuming that docker is installed, i.e., `docker ps` runs, clone this project and type

```
./runPostgresWithSwiss.sh
```
which will build a Docker container based on postgres:latest and import Open Street Map (OSM) data using [osmosis](http://wiki.openstreetmap.org/wiki/Osmosis)

Note: the above operation is CPU and network intense. You can connect to the postgres DB using

```
./connectToPostgres.sh
```

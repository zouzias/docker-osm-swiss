#!/bin/bash

# This is based on https://wiki.openstreetmap.org/wiki/Osmosis/PostGIS_Setup

export PGPASSWORD=docker

gunzip /usr/share/doc/osmosis/examples/*.gz

psql -h localhost -p 5432 -U docker -d pgsnapshot --command="CREATE EXTENSION postgis; CREATE EXTENSION hstore;"
psql -h localhost -p 5432 -U docker -d pgsnapshot -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6.sql
psql -h localhost -p 5432 -U docker -d pgsnapshot -f /usr/share/doc/osmosis/examples/pgsnapshot_schema_0.6_linestring.sql

# load Swiss OSM into Postgres
osmosis --read-pbf ./switzerland-exact.osm.pbf --log-progress --write-pgsql database=pgsnapshot user="docker" password="docker"

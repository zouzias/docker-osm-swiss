FROM postgres:9.6.1

MAINTAINER Anastasios Zouzias zouzias@gmail.com

# Install osmosis, wget and postgis
RUN apt-get update && apt-get install -yq osmosis wget postgis

# Download switzerland osm extract
RUN wget https://planet.osm.ch/switzerland-exact.osm.pbf

# Copy bootstrap script
COPY postgres-bootstrap.sh /docker-entrypoint-initdb.d/


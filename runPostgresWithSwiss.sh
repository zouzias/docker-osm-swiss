#!/bin/bash


export PGDATA=/var/lib/postgresql/data/osm

docker build . -t zouzias/postgres-osm-swiss
docker run -i -t -p 5432:5432 \
		-e POSTGRES_USER=docker -e POSTGRES_PASSWORD=docker -e POSTGRES_DB=pgsnapshot \
		zouzias/postgres-osm-swiss



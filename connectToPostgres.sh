#!/bin/bash

# Script to connect to local postgres DB

export PGPASSWORD=docker
psql -h localhost -p 5432 -U docker pgsnapshot

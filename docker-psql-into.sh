#!/bin/bash

docker run -ti --rm \
--network geonetwork_clima \
--link postgres_geonetwork_clima:pg \
geographica/postgis:eclectic_equidna psql -h pg -p 5432 -U postgres postgres

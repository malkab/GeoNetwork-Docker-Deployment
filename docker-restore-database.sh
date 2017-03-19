#!/bin/bash

docker run -ti --rm \
--network geonetwork_clima \
--link postgres_geonetwork_clima:pg \
-v `pwd`/:/out/ \
geographica/postgis:eclectic_equidna \
/bin/bash -c \
"PGPASSWORD=\"GNpieZA323\" psql -h pg -p 5432 -U postgres postgres -c \"create database geonetwork;\" ; PGPASSWORD=\"GNpieZA323\" pg_restore -F c -v -h pg -p 5432 -U postgres -d geonetwork /out/geonetwork_db_dump.dump"

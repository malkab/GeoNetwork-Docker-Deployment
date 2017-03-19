#!/bin/bash

docker run -ti --rm \
--network geonetwork_clima \
--link postgres_geonetwork_clima:pg \
-v `pwd`/:/out/ \
geographica/postgis:eclectic_equidna \
PGPASSWORD="GNpieZA323" pg_dump -b -E UTF8 -f /out/geonetwork_db_dump.dump -F c -v -Z 9 -h pg -p 5432 -U postgres geonetwork

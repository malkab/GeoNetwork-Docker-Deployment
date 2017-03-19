# GeoNetwork Docker Deployment

A deployment of GeoNetwork over PostgreSQL with Docker.

Change PostgreSQL postgres password and ports in __docker-compose.yml__.

Usage:

```Shell
# Initial deployment

./docker-compose-create_network.sh
docker-compose up -d

# Will start only the PostgreSQL server due to startup timing,
# but this is ok

# Restore backup database

./docker-restore-database.sh

# Start again

docker-compose up -d
```

Scripts:

- __docker-backup-database.sh:__ back ups GeoNetwork database;

- __docker-compose-logs.sh:__ check compose logs;

- __docker-psql-into.sh__ psql into PostgreSQL database.

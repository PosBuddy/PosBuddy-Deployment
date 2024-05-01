#! /bin/bash

TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

echo "Backup posBuddy Database"
docker exec -u postgres posBuddy-database /bin/bash -c "/usr/bin/pg_dump -U $POSTGRES_USER posbuddy | gzip -9 > /tmp/postgres-backup.sql.gz"

echo "copy backup from container"
docker cp posBuddy-database:/tmp/postgres-backup.sql.gz /opt/posBuddy/backup_posBuddy_$TIMESTAMP.sql.gz

echo "Backup created"

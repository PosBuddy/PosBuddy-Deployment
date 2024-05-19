#! /bin/bash

TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

echo "Backup posBuddy Database"
docker exec -u postgres posBuddy-database /bin/bash -c "/usr/bin/pg_dump --format=t --username=$POSTGRES_USER --file=/tmp/postgres-backup.tar posbuddy"

echo "copy backup from container"
docker cp posBuddy-database:/tmp/postgres-backup.tar /opt/posBuddy/backup_posBuddy_$TIMESTAMP.tar

echo "Backup created"

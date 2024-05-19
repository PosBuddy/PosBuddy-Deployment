#! /bin/bash

if [ -n "${1}" ]; then
    echo "copy database backup into container"
    docker cp  $1 posBuddy-database:/tmp/postgres-backup.tar
    echo "now running pg_restore"
    docker exec -u postgres posBuddy-database /bin/bash -c "/usr/bin/pg_restore --clean --format=t --dbname=posbuddy --username=posbuddy < /tmp/postgres-backup.tar"
else
    echo "please give me the <backupFile>.sql.gz as parameter"
    exit 1
fi

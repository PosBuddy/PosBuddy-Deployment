#!/usr/bin/env python3  

import logging
import subprocess


def main():
    executeCreateDatabse("postgres", "CREATE USER  posBuddy  WITH PASSWORD 'posBuddy';")
    executeCreateDatabse("postgres", "CREATE DATABASE posBuddy;")
    executeCreateDatabse("postgres", "GRANT ALL PRIVILEGES ON DATABASE posBuddy TO poBuddy;")
    executeCreateDatabse("postgres", "ALTER DATABASE posBuddy OWNER TO posBuddy;")
    executeCreateDatabse("postgres", "CREATE EXTENSION IF NOT EXISTS 'uuid-ossp'")

def executeCreateDatabse(database, psqlCommand):
    process = subprocess.Popen(
        ['docker', 'exec', 'posBuddy-database', 'psql', '-d', database, '-U', 'postgres', '-c', psqlCommand],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE)
    logging.info("Response from ta-database:%s", process.communicate())


if __name__ == '__main__':
    logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.INFO)
    main()

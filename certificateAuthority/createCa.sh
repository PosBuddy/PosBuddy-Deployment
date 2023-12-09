#!/bin/bash

echo "-----------------------------------------------------------------"
echo "--     THIS SCRIPT CREATES A NEW CERTIFICATE AUTHORITY         --"
echo "--         type doIt when you are sure to do this              --"
echo "-----------------------------------------------------------------"

read check

if [ "$check" = "doIt" ];
then
  openssl req -x509 -sha256 -days 365 -newkey rsa:4096 -keyout cacert.key -out cacert.pem

  echo "----------------------------------------------------------------------------------------"
  echo "folow this-> https://guides.micronaut.io/latest/micronaut-security-x509-gradle-java.html"

  exit;
else
  echo "Nothing happend ;-)"
fi

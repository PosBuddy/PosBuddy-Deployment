#!/bin/bash

echo "-----------------------------------------------------------------"
echo "--       THIS SCRIPT ->RESET<- THE PosBuddy DATABASE           --"
echo "--         type doIt when you are sure to do this              --"
echo "-----------------------------------------------------------------"

read check

if [ "$check" = "doIt" ];
then
   echo "Reset posBuddy Database";
   docker exec posBuddy-database psql -U postgres -c 'drop database posbuddy'
   exit;
else
  echo "Nothing happend ;-)"
fi


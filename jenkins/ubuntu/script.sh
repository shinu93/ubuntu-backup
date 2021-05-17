#!/bin/bash

FIRST_NAME=$1
SECOND_NAME=$2
SHOW=$3

if [ "$SHOW" = "true" ]; then

  echo "Hi $FIRST_NAME $SECOND_NAME, todays date and time is $(date)"

else
  echo "if you want to see the name, please check the mark"

fi
  

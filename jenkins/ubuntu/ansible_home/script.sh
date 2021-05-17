#!/bin/bash

DB_USER=$1
DB_HOST=$2
DB_PASS=$3
DB_NAME=$4
DB_DATE=$(date +%H-%M-%S)

mysqldump -u $DB_USER -h $DB_HOST -p$DB_PASS $DB_NAME --column-statistics=0 > /tmp/db-$DB_DATE.sql
mysqldump -u $DB_USER -h $DB_HOST -p$DB_PASS $DB_NAME --column-statistics=0 > /tmp/family-$DB_DATE.sql
export AWS_ACCESS_KEY_ID=AKIA22IFGCNCW65NSAVF
export AWS_SECRET_ACCESS_KEY=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

if [ "$DB_NAME" = "testdb" ]; then
  aws s3 cp /tmp/db-$DB_DATE.sql s3://jenkins-mysql-database/db-$DB_DATE.sql

else
  aws s3 cp /tmp/family-$DB_DATE.sql s3://jenkins-mysql-database/family-$DB_DATE.sql

fi

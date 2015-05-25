#!/bin/bash

DATE=$(date +"%m-%d-%y")
echo "Starting backup of testalator on $DATE"

mongodump --out /home/testalator/backups/$DATE
tar czf /home/testalator/backups/$DATE.tar.gz /home/testalator/backups/$DATE
s3cmd put /home/testalator/backups/$DATE.tar.gz s3://tessel-backups/
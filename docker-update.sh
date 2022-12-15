#!/bin/sh

set -e

# Do a pull then an update
/usr/bin/docker-compose -f /home/user/docker/docker-compose.yml pull --no-parallel
/usr/bin/docker-compose -f /home/user/docker/docker-compose.yml up -d >> /home/user/docker/log 2>&1
/usr/bin/docker image prune -f
echo "\n" >> /home/user/docker/log
echo "`date`" >> /home/user/docker/log

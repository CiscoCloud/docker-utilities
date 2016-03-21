#!/bin/sh
docker rm $(docker ps -q -f status=exited)

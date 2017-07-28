#!/bin/bash
PORT=${1-6379}
docker run -it redis redis-cli -h 172.17.0.1 -p $PORT

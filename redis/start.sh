#!/bin/bash
PORT=${1-6379}
DATA=${2-/data}
docker 	run				\
	-p $PORT:6379			\
	-v $PWD/$DATA:/data 		\
	-d redis			\
	redis-server --appendonly yes 	

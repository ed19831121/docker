#!/bin/bash
PORT=${1-3306}
PASSWORD=${2-123456}
docker 	run 					\
	-p $PORT:3306 				\
	-e MYSQL_ROOT_PASSWORD=$PASSWORD 	\
	-v conf:/etc/mysql/conf.d 		\
	-v data:/var/lib/mysql			\
	--name mysql-1				\
	-d mysql

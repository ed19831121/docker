#USAGE:
	sh start.sh [port] [password]
---
##First step:
mkdir -p \
	~/mysql/data \
	~/mysql/logs \
	~/mysql/conf
---
##start.sh
PORT=${1-3306}
PASSWORD=${2-123456}
docker run 
	-p 3306:3306 				\
	-v $PWD/conf/my.cnf:/etc/mysql/my.cnf 	\
	-v $PWD/var/lib/mysql:/var/lib/mysql	\
	-v $PWD/logs:/logs 			\
	-v $PWD/data:/mysql_data 		\
	-e MYSQL_ROOT_PASSWORD=$PASSWORD	\
	-d mysql
---


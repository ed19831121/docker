#USAGE:
	sh start.sh 	[port] [data_path] 
	sh client.sh	[port]
---
mkdir -p ~/redis ~/redis/data		#创建目录redis,用于存放data。
***
start.sh:
	PORT=${1-6379}
	docker run 
		-p $PORT:6379 
		-v $PWD/data:/data  
		-d redis 
		redis-server --appendonly yes
___
client.sh:
	PORT=${1-6379}
	docker run 
		-it redis:3.2 
		redis-cli -h 172.17.0.1 -p $PORT
	

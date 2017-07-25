mkdir -p ~/redis ~/redis/data		#创建目录redis,用于存放data。
start.sh:
	docker run 
		-p 6379:6379 
		-v $PWD/data:/data  
		-d redis:3.2 
		redis-server --appendonly yes
client.sh:
	docker run 
		-it redis:3.2 
		redis-cli -h 172.17.0.1
	

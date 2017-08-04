#!/bin/bash
docker run -p 80:80 --name da1 -v $PWD/www:/www  -v $PWD/conf:/etc/nginx/conf.d -v $PWD/logs:/wwwlogs  -d nginx 

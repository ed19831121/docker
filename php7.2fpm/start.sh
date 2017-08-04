#!/bin/bash
docker run -d php:7.2.0beta1-apache --name da2 -p:8080:80 -v $PWD/config:/usr/local/apache2/conf -v $PWD/www:/var/www/html/

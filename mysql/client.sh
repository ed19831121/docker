#!/bin/bash
CONTAINER=${1:-mysql-1}
docker run \
	-it --link $CONTAINER:db \
	--rm mysql \
	sh -c '	exec mysql -hdb -uroot -p123456 '

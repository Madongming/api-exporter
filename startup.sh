#!/bin/bash

docker run -d --rm -v ${PWD}/conf/aa.yml:/etc/aa.yml -p 10880:10880 apiexporter:latest \
       /usr/bin/apiexporter -c /etc/aa.yml

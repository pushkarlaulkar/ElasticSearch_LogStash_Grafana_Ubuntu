#!/bin/bash

nohup /usr/bin/python3 /home/ls/data-generation-queries/sample-code.py &
/home/ls/logstash-7.13.3/bin/logstash -f /etc/logstash/conf.d/sample-data.conf;
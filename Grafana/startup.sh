#!/bin/bash

cd /home/grafana/grafana-8.0.6/bin
nohup ./grafana-server web &
sleep 30
curl -H "Content-Type: application/json" --user admin:admin --request POST --data @/home/grafana/sample-datasource.json http://localhost:3000/api/datasources
sleep 10
curl -H "Content-Type: application/json" --user admin:admin --request POST --data @/home/grafana/sample-dashboard.json http://localhost:3000/api/dashboards/db
while true; do pwd; sleep 1000; done; 
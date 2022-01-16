This folder contains all the deployment and service files required for deploying on Kubernetes

Create ElasticSearch Deployment

```kubectl create -f elasticsearch-deployment.yml```

Create ElasticSearch ClusterIP service

```kubectl create -f elasticsearch-service.yml```

Create LogStash Deployment

```kubectl create -f logstash-deployment.yml```

We do not need service for LogStash since no other pods are going to access this pod

Create Grafana Deployment

```kubectl create -f grafana-deployment.yml```

Create Grafana Service

```kubectl create -f grafana-service.yml```

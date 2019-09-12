#!/usr/bin/env bash

export TOKEN=1193c34b45d37322d98422fb1f337b5429

curl -s -XPOST 'http://$(minikube ip):30000/job/seed/config.xml' -u admin:113e95e04fb410d9e338b209e8e759c2af --data-binary @seed.xml -H "Content-Type:text/xml"

curl -s -XPOST "http://$(minikube ip):30000/job/seed/buildWithParameters" -u admin:$TOKEN -H "Content-Type:text/xml"
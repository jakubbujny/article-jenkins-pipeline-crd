#!/usr/bin/env bash

export TOKEN=1193c34b45d37322d98422fb1f337b5429

curl -v -XPOST "http://$(minikube ip):30000/job/seed/config.xml" -u admin:$TOKEN --data-binary @seed.xml -H "Content-Type:application/xml"

curl -s -XPOST "http://$(minikube ip):30000/job/seed/buildWithParameters" -u admin:$TOKEN -H "Content-Type:text/xml"
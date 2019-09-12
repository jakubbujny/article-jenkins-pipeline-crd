#!/usr/bin/env bash

curl -s -XPOST 'http://localhost:8080/createItem?name=seed' -u admin:113e95e04fb410d9e338b209e8e759c2af --data-binary @seed.xml -H "Content-Type:text/xml"

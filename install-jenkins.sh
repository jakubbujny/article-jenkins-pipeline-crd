#!/usr/bin/env bash

helm init --wait

# https://stackoverflow.com/questions/48316330/how-to-set-multiple-values-with-helm
helm install --name jenkins stable/jenkins --set master.csrf.defaultCrumbIssuer.enabled=false --set master.tag=2.194 --set master.serviceType=ClusterIP --set master.installPlugins[0]="kubernetes:1.18.1" --set master.installPlugins[1]="workflow-aggregator:2.6" --set master.installPlugins[2]="credentials-binding:1.19" --set master.installPlugins[3]="git:3.11.0" --set master.installPlugins[4]="workflow-job:2.33" --set master.installPlugins[5]="job-dsl:1.76"
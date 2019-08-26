#!/bin/bash

for c in $(docker container ls -aq); do docker container rm $c; done


for i in $(docker image ls -aq); do docker rmi $i; done


for v in $(docker volume ls -q); do docker volume rm $v; done

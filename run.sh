#!/bin/sh
docker kill java8
docker rm java8

docker run --name="java8" --hostname="java8" -it thiswebs4u/java8
echo "Java 8 is running"


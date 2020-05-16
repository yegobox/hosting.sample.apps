#!/bin/bash
app="dropbox.integration:1.2"
# docker build -t ${app} .

docker-compose up --build -d

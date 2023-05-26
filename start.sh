#!/bin/bash
if [ ! -f .env ]
then
    cp template.env .env
fi
source .env
docker-compose up
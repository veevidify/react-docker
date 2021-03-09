#!/bin/bash

args="$@"
docker run --rm -it -v "$(pwd):/app" -w "/app" -u $UID -e CHOKIDAR_USEPOLLING=true --env-file="$(pwd)/.env" node:12-alpine yarn "$args"


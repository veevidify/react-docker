#!/bin/bash

args="$@"
echo "yarn $args"
docker run --rm -i -v "$(pwd):/app" -w "/app" -u $UID -e CHOKIDAR_USEPOLLING=true --env-file="$(pwd)/.env" node:12-alpine yarn $args


#!/bin/bash

module="$1"
args="${@:2}"
echo "yarn $module $args"
docker run --rm -it -v "$(pwd):/app" -w "/app" -u $UID -e CHOKIDAR_USEPOLLING=true --env-file="$(pwd)/.env" node:12-alpine yarn $module $args


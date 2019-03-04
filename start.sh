#!/bin/bash

set -e

/opt/steamcmd/steamcmd.sh +runscript /app/start.steamcmd

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/app/server/RustDedicated_Data/Plugins/x86_64"

pushd /app/server
    /app/server/RustDedicated -batchmode -nographics \
        -server.ip 0.0.0.0 \
        -server.port 28015 \
        -rcon.ip 0.0.0.0 \
        -rcon.port 28016 \
        -rcon.password "goodpassword" \
        -server.maxplayers 50 \
        -server.hostname "Server Name" \
        -server.identity "docker" \
        -server.level "Procedural Map" \
        -server.seed 123456 \
        -server.worldsize 3000 \
        -server.saveinterval 300 \
        -server.globalchat true \
        -server.description "Description Here"
popd

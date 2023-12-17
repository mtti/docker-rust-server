#!/bin/bash

set -e

/opt/steamcmd/steamcmd.sh +runscript /app/start.steamcmd

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/app/server/RustDedicated_Data/Plugins:/app/server/RustDedicated_Data/Plugins/x86_64"

source /app/options.sh

pushd /app/server
    /app/server/RustDedicated -batchmode -nographics \
        -server.ip 0.0.0.0 \
        -server.port 28015 \
        -server.queryport 28016 \
        -rcon.ip 0.0.0.0 \
        -rcon.port 28016 \
        -rcon.password "goodpassword" \
        -server.maxplayers 50 \
        -server.hostname "$SERVER_NAME" \
        -server.identity "$SERVER_IDENTITY" \
        -server.level "Procedural Map" \
        -server.seed $SERVER_SEED \
        -server.worldsize $SERVER_SIZE \
        -server.saveinterval 300 \
        -server.globalchat true \
        -server.description "Description Here"
popd

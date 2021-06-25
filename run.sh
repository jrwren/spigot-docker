#!/bin/sh
if [ ! -d logs ]; then
    mkdir -p logs plugins world world_nether world_the_end
    curl -LO -C - https://download.getbukkit.org/spigot/spigot-1.17.jar
    docker build .
fi
docker run -d -p 25565:25565 \
    -p 25575:25575 \
    --name spigot \
    -v $PWD/logs:/opt/minecraft/logs \
    -v $PWD/plugins:/opt/minecraft/plugins \
    -v $PWD/world:/opt/minecraft/world \
    -v $PWD/world_nether:/opt/minecraft/world_nether \
    -v $PWD/world_the_end:/opt/minecraft/world_the_end \
    -v $PWD/banned-ips.json:/opt/minecraft/banned-ips.json \
    -v $PWD/banned-players.json:/opt/minecraft/banned-players.json \
    -v $PWD/bukkit.yml:/opt/minecraft/bukkit.yml \
    -v $PWD/commands.yml:/opt/minecraft/commands.yml \
    -v $PWD/help.yml:/opt/minecraft/help.yml \
    -v $PWD/ops.json:/opt/minecraft/ops.json \
    -v $PWD/server.properties:/opt/minecraft/server.properties \
    -v $PWD/spigot.yml:/opt/minecraft/spigot.yml \
    -v $PWD/usercache.json:/opt/minecraft/usercache.json \
    -v $PWD/whitelist.json:/opt/minecraft/whitelist.json \
    spigot:latest

# What is this?

I'm a minecraft n00b.

I wanted mincraft running in docker.

I didn't want bells and whistles of docker environment vars for spigot settings.

This is what I came up with.

Bonuses: Uses Microsoft's build of openjdk.

## To use

Clone this repo and run `run.sh`

I'm still figuring all of this out so you may want to set the rcon password in server.properties. You may want to remove the rcon port forward from run.sh.

## What does it do?

The run.sh script uses the logs directory as a sentinel and if it doesn't exist it tries to download spigot-1.17.jar and builds the docker image based on the included Dockerfile


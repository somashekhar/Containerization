ctrl P ctrl Q : to come out of container without exiting

docker CONTEXT COMMAND 
  CONTEXT: [always a singular]
    image
    container
    network
  COMMAND: 
    ls
    rm



docker version
docker system df
docker system info

docker image ls 
docker image ls --no-trunc
docker image inspect alpine:latest

docker container create [OPTIONS] IMAGE [COMMAND] [ARG...]
docker container create --name c0 nginx:alpine
docker container create --name c1 -it alpine

docker container ls 
docker container ls -a 
docker container inspect <containerName>

docker container start c0
docker container start -ia c1
docker container attach c0
docker container attach c1 

docker container top <containerId>
docker container logs <containerName>
docker container logs -f <containerName>

docker container exec -it c0 /bin/sh
docker container diff <container name>

docker plugin create 

# Storage 
docker volume create --help
docker volume create --driver local volOne
docker volume inspect volOne

docker container create --name v1 -it -v vol1:/data
docker container create --name v1 -it --mount type=volume,target=/data,source=vol1 alpine:latest
docker container diff v1
    cat /var/lib/docker/volumes/vol1/_data/name.txt
docker container create --name v2 -it --mount type=volume,source=vol1,target=/vols/vol1 --mount type=volume,source=vol2,target=/data alpine
docker container create --name v3 --volumes-from v2 

docker container create --name b1 -it --mount type=tmpfs,target=/data alpine


# Networking:
docker network create --driver bridge --subnet 192.168.125.0/24 pnet
docker container create --name pn1 -it --network pnet alpine

docker network connect pnet n1


docker container stop <container names>
docker container prune

docker container rm -f <container names>

# Configuration 
docker container create --name e1 -it --env MYNAME=Som --env MYHOST=sbidari alpine


# Getting from docker repo
docker image pull ghost 
docker container create --name pg1 --mount type=volume,source=pg1vol,target=/var/lib/postgressql/data --network=pnet1 --env POSTGRES_PASSWORD=infoblox --env POSTGRES_USER=admin postgres:alpine
docker container create --name ad1 --network pnet1 --publish 9005:8080 --env ADMINER_DEFAULT_SERVER=pg1 adminer 


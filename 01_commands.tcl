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
docker container start c1
docker container attach c0
docker container attach c1 

docker container top <containerId>
docker container logs <containerName>
docker container logs -f <containerName>

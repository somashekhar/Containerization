docker CONTEXT COMMAND 

  CONTEXT: [always a singular]
    image
    container
    network

  COMMAND: 
    ls
    rm

docker version
docker image ls 
docker image ls --no-trunc
docker image inspect alpine:latest
docker system df
docker system info

|--------------------------------------------------------------------------------------|

Note:
    Single letter options should be written by -
    Full word options should be written by --
    --name value or --name=value 


docker container create [OPTIONS] IMAGE [COMMAND] [ARG...]
docker container create --name c0 nginx:alpine

docker container ls 
docker container ls -a 
docker container inspect <containerName>

docker system df
docker container start c0

Note:
    Leaving stdin and vtty open will allow us to get interactive containers.

docker container create --name c1 -it alpine
    -i  standard input
    -t  vtty enabled
docker container start c1
docker container attach c1 

docker container top <containerId>
docker container logs <containerName>
docker container logs -f <containerName>

docker container stop c1

Note: Responsibility of PID 1
  1. The lifetime of PID 1 is the lifetime of container.
  2. Container engine collects whatever is produced as stadout, stderr on PID 1 as logs.
  3. Handle stop signal 
      Docker container engine decides container to be stopped then it sends a single(SIGTERM =7) to PID 1.
      

|--------------------------------------------------------------------------------------|




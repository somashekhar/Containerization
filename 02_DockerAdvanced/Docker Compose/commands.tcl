docker compose [-f MANIFEST] COMMAND

docker-compose -f stack.yaml config
docker-compose -f stack.yaml up -d 
docker-compose -f stack.yaml ps

docker-compose -f stack.yaml -p app2 up -d
docker-compose -f stack.yaml logs

docker-compose -f stack.yaml down
docker-compose -f stack.yaml -p ap2 down --volumes



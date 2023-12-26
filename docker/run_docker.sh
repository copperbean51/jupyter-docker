docker container run \
--name jupyter \
--rm \
--detach \
--publish 8888:8888 \
--volume /home/lin/workspace/jupyter/workspace:/home/workspace \
jupyter:latest

echo "http://localhost:8888/lab/tree/home"

docker container run \
--gpus all \
--name tf-gpu-jupyter \
--rm \
--detach \
--publish 8888:8888 \
--volume /home/wlin/workspace/jupyter-docker/workspace:/tf/workspace \
-it \
tf-gpu-jupyter:latest

echo "http://localhost:8888/lab/tree/home"

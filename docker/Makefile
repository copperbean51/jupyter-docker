IMAGE_NAME=tf-gpu-jupyter
#TAG_NAME=$(shell date -u "+%Y%m%d")
TAG_NAME=latest

DOCKER_IMAGE ?= $(IMAGE_NAME):$(TAG_NAME)

build: 
	docker build -t $(DOCKER_IMAGE) .

start:
	bash run_docker_gpu.sh

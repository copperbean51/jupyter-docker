#FROM python:3.9-slim-buster
#FROM tensorflow/tensorflow:2.5.0

## url https://hub.docker.com/r/tensorflow/tensorflow/
FROM tensorflow/tensorflow:2.5.0-gpu-jupyter

# set up pubkey of nvidia 
RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub

COPY requirements.txt /tmp/
RUN pip install --upgrade --no-cache-dir pip && \
    pip install --no-cache-dir -r /tmp/requirements.txt

RUN apt-get update \
    && apt-get install -y \
    graphviz \
    git \
    wget \
    curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]


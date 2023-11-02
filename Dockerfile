FROM nvidia/cuda:11.8.0-devel-ubuntu22.04

RUN apt-get update && apt-get install git -y
RUN apt-get install -y python3 python3-pip

RUN pip3 install --upgrade pip
RUN pip3 install "fschat[model_worker,webui]"


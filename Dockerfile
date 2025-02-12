FROM ubuntu:latest

ENV STARTUP_SCRIPT="run_gpu.sh"

RUN apt-get update && apt-get install -y \
    python-is-python3 \
    python3-pip \
    python3-venv \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /comfy-ui

COPY install-comfyui-docker.sh install-comfyui-docker.sh

RUN chmod +x install-comfyui-docker.sh && ./install-comfyui-docker.sh

CMD ["/bin/bash", "-c", "cd /comfy-ui && ./$STARTUP_SCRIPT"]

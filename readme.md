## This repository contains files for building and running [ComfyUI](https://github.com/comfyanonymous/ComfyUI) along with [ComfyUI-Manager](https://github.com/ltdrdata/ComfyUI-Manager) in Docker.
* Clone the repo
```bash
git clone https://github.com/Quenary/ComfyUI-Manager-Docker
```
* Build the image
```bash
docker build -t my-comfyui-image .
```

* Run on GPU
```bash
docker run -d \
  --name ComfyUI \
  --gpus all \
  -p 8188:8188 \
  -v $HOME/ComfyUI/output:/comfy-ui/ComfyUI/output \
  -v $HOME/ComfyUI/models:/comfy-ui/ComfyUI/models \
  my-comfyui-image
```

* Run on CPU
```bash
docker run -d \
  --name ComfyUI \
  -e STARTUP_SCRIPT='run_cpu.sh' \
  -p 8188:8188 \
  -v $HOME/ComfyUI/output:/comfy-ui/ComfyUI/output \
  -v $HOME/ComfyUI/models:/comfy-ui/ComfyUI/models \
  my-comfyui-image
```
# better-comfyui-wrapper

Wrapper image for `madiator2011/better-comfyui:slim` with:
- `/workspace/ComfyUI` symlink → `/workspace/madapps/ComfyUI`
- baked notebook: `/workspace/notebooks/model_downloader.ipynb`

## Image
Published to GHCR:
- ghcr.io/freeradical16/better-comfyui-wrapper:latest

## What this wrapper changes
- Adds a symlink so you can use `/workspace/ComfyUI` in scripts/workflows.
- Copies the downloader notebook into `/workspace/notebooks/`.
- Installs small notebook deps: requests, tqdm, ipywidgets, jupyterlab_widgets.

Everything else (startup, ports, etc.) is inherited from the base image.

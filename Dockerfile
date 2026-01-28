FROM madiator2011/better-comfyui:slim

# Clean path alias (doesn't break base image scripts)
RUN ln -s /workspace/madapps/ComfyUI /workspace/ComfyUI || true

# Bake notebook into the image
RUN mkdir -p /workspace/notebooks
COPY notebooks/model_downloader.ipynb /workspace/notebooks/model_downloader.ipynb

# Optional: make notebook widgets work out of the box
RUN python3 -m pip install -U requests tqdm ipywidgets jupyterlab_widgets || true

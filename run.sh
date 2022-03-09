#!/bin/sh -v
docker run -d -it -v /mnt/g/我的雲端硬碟/docker/end-to-end-mlops-pipeline/data:/app/data -p 5000:5000 --name end-to-end-mlops-pipeline localhost:4000/seagarwu/end-to-end-mlops-pipeline:v1.0

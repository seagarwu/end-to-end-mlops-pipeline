#!/bin/sh -v
docker login localhost:4000
docker push localhost:4000/seagarwu/end-to-end-mlops-pipeline:v1.0

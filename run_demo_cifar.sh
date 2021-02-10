#!/bin/bash

DATA_DIR=data/processed/
OUTPUT_DIR=output/

SAMPLE_SIZE=2000
CUDA_ARG="--cuda"

source .venv/bin/activate && \
python demo_dcgan.py \
    --dataset cifar10 \
    --dataroot ${DATA_DIR} \
    --outf ${OUTPUT_DIR} \
    --sampleSize ${SAMPLE_SIZE} \
    ${CUDA_ARG}

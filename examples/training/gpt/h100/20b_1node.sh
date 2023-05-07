#!/bin/bash

#Users should specify the following directories
NEMO_MEGATRON_LAUNCHER_DIR=/home/boson/NeMo-Megatron-Launcher
DATA_DIR="/home/boson/gpt3_data"

#Users should setup their cluster type in /launcher_scripts/conf/config.yaml
python3 ${NEMO_MEGATRON_LAUNCHER_DIR}/launcher_scripts/main.py \
training=gpt3/20b \
stages=[training] \
launcher_scripts_path=${NEMO_MEGATRON_LAUNCHER_DIR}/launcher_scripts \
data_dir=${DATA_DIR} \
base_results_dir=${NEMO_MEGATRON_LAUNCHER_DIR}/results \
training.run.name="h100_20b_1node" \
training.trainer.num_nodes=1 \
training.model.micro_batch_size=4 \
training.model.global_batch_size=4 \
training.model.tensor_model_parallel_size=8 \
training.model.pipeline_model_parallel_size=1 \
training.model.num_layers=48 \
training.model.num_attention_heads=64 \
training.model.transformer_engine=True \
training.model.fp8=false \
training.model.fp8_e4m3=false \
training.model.fp8_hybrid=true \
training.model.fp8_margin=0 \
training.model.fp8_interval=1 \
training.model.fp8_amax_history_len=32 \
training.model.fp8_amax_compute_algo=max

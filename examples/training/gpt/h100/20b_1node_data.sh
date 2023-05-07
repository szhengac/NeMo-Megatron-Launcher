#!/bin/bash

#Users should specify the following directories
NEMO_MEGATRON_LAUNCHER_DIR=/home/boson/NeMo-Megatron-Launcher
DATA_DIR="/home/boson/gpt3_data"

#Users should setup their cluster type in /launcher_scripts/conf/config.yaml
python3 ${NEMO_MEGATRON_LAUNCHER_DIR}/launcher_scripts/main.py \
data_preparation=gpt3/download_gpt3_pile \
stages=[data_preparation] \
launcher_scripts_path=${NEMO_MEGATRON_LAUNCHER_DIR}/launcher_scripts \
data_dir=${DATA_DIR} \
base_results_dir=${NEMO_MEGATRON_LAUNCHER_DIR}/results \
data_preparation.file_numbers="0"

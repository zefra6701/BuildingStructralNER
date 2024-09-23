#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python src/evaluate.py \
    --model_name_or_path THUDM/chatglm3-6b-128k \
    --adapter_name_or_path ../autodl-tmp/chatglmlora/train_0shot1QA3negi_neo \
    --template chatglm3  \
    --finetuning_type lora \
    --task ceval \
    --split validation \
    --lang zh \
    --n_shot 2 \
    --batch_size 4

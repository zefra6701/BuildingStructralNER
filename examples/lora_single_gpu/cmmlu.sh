#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python src/evaluate.py \
    --model_name_or_path THUDM/chatglm3-6b-128k \
    --adapter_name_or_path saves/ChatGLM3-6B-Chat/lora/train_0shot \
    --template chatglm3fewshot  \
    --finetuning_type lora \
    --task cmmlu \
    --split test \
    --lang zh \
    --n_shot 2 \
    --batch_size 4

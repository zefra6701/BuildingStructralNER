#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python LLaMA-Factory/src/cli_demo.py \
    --model_name_or_path autodl-tmp/chatglm3-6b \
    --adapter_name_or_path LLaMA-Factory/saves/ChatGLM3-6B-Base/lora/train_2024-04-09-17-34-36 \
    --template default \
    --finetuning_type lora

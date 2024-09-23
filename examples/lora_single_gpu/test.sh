#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python ../../src/train_bash.py \
    --stage sft \
    --model_name_or_path THUDM/chatglm3-6b-128k \
    --adapter_name_or_path ../../saves/ChatGLM3-6B-Chat/lora/train_0shot20vs80_513 \
    --finetuning_type lora \
    --template chatglm3 \
    --dataset_dir ../../data \
    --dataset GJtest100 \
    --cutoff_len 1028 \
    --max_samples 100000 \
    --per_device_eval_batch_size 8 \
    --predict_with_generate True \
    --max_new_tokens 1028 \
    --top_p 0.7 \
    --temperature 0.95 \
    --output_dir ../../saves/ChatGLM3-6B-Chat/lora/eval_0shot20vs80_514 \
    --do_predict True 

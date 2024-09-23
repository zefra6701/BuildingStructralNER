#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python ../../src/train_bash.py \
    --stage sft \
    --model_name_or_path THUDM/chatglm3-6b-128k \
        --adapter_name_or_path ../../../autodl-tmp/chatglmlora/train_NE1265\
    --finetuning_type lora \
    --template chatglm3 \
    --dataset_dir ../../data \
    --dataset GJtest592shot \
    --cutoff_len 1028 \
    --max_samples 100000 \
    --per_device_eval_batch_size 8 \
    --predict_with_generate True \
    --max_new_tokens 512 \
    --top_p 0.7 \
    --temperature 0.95 \
    --output_dir ../../../autodl-tmp/chatglmlora/eval_GJNEv4_200shot \
    --do_predict True 

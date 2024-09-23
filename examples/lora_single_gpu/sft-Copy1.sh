#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python ../../src/train_bash.py \
    --stage sft \
    --do_train \
    --model_name_or_path THUDM/chatglm3-6b-128k \
    --dataset  GJner0shot6000,GJner0shotNegi1\
    --dataset_dir ../../data \
    --template chatglm3 \
    --finetuning_type lora \
    --output_dir ../../saves/ChatGLM3-6B-Chat/lora/train_0shot6000negi1_56 \
    --overwrite_cache \
    --overwrite_output_dir \
    --cutoff_len 1024 \
    --preprocessing_num_workers 16 \
    --per_device_train_batch_size 1 \
    --gradient_accumulation_steps 10 \
    --lr_scheduler_type cosine \
    --logging_steps 10 \
    --warmup_steps 20 \
    --save_steps 200 \
    --learning_rate 5e-5 \
    --num_train_epochs 1.0 \
    --max_samples 100000 \
    --fp16 True \
    --lora_rank 8 \
    --lora_alpha 16 \
    --lora_dropout 0.1 \
    --lora_target query_key_value \
    --plot_loss True

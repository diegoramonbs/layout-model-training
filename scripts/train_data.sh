#!/bin/bash

cd ../tools

python train_net.py \
    --dataset_name          doe-layout \
    --json_annotation_train ../data/doe/train.json \
    --image_path_train      ../data/doe/images \
    --json_annotation_val   ../data/doe/test.json \
    --image_path_val        ../data/doe/images \
    --config-file           ../configs/doe/mask_rcnn_R_50_FPN_3x.yaml \
    OUTPUT_DIR  ../outputs/doe/mask_rcnn_R_50_FPN_3x/ \
    SOLVER.IMS_PER_BATCH 2 

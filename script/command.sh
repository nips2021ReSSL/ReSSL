#!/bin/bash


job_name=$1
partition=$2
train_gpu=$3
num_node=$4
command=$5
total_process=$((train_gpu*num_node))

mkdir -p log

now=$(date +"%Y%m%d_%H%M%S")

# nohup 
GLOG_vmodule=MemcachedClient=-1 \
srun --partition=$partition \
--mpi=pmi2 -n$total_process \
--gres=gpu:$train_gpu \
--ntasks-per-node=$train_gpu \
--job-name=$job_name \
--kill-on-bad-exit=1 \
--cpus-per-task=5 \
$command  2>&1|tee -a log/$job_name.log &


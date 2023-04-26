#!/bin/bash
#SBATCH -J EMTraining
#SBATCH --comment "Traing Edit Model on clip-filtered-data"

#SBATCH --qos level0
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH --gpus=2
#SBATCH --gres=gpu:2
#SBATCH --partition=gpu
# SBATCH -w lambda-hyperplane01
#SBATCH --account=research
#SBATCH --cpus-per-task=16
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=1-00:00:00

#SBATCH -o "/home/lipuhao/dev/MAH/CodeRepo/instruct-pix2pix/logs/slurm/%x.%j.out"
#SBATCH -e "/home/lipuhao/dev/MAH/CodeRepo/instruct-pix2pix/logs/slurm/%x.%j.err"

# HOME=/home/lipuhao

echo "running slrum file"

python main.py --name default --base configs/train.yaml --train --gpus 0,1

echo "exit slrum file" 
#!/bin/bash -l

##############################
#       Job blueprint        #
##############################

# Different SBATCH options - https://osirim.irit.fr/site/en/articles/sbatch-options

# For salloc, use the following
# salloc --gres=gpu:1 -c 2 --mem=4G srun --pty $SHELL -l

# Give your job a name, so you can recognize it in the queue overview
#SBATCH --job-name=zip

# Remove one # to uncommment
#SBATCH --output=%x_%j.out

# Define, how many nodes you need. Here, we ask for 1 node.
#SBATCH -N 1 #nodes
#SBATCH -n 1 #tasks
#SBATCH --cpus-per-task=5
#SBATCH --mem=50G
#SBATCH --time=2-0:00:00    # Run for 7 days

#SBATCH --mail-type=ALL
#SBATCH --mail-user=asd@cs.princeton.edu

# Submit jobs
# srun python run_attention_initialization.py   --train_data_file eo_data/all.txt   --output_dir output_files/EsperBERTo-small-v1-mlm  --model_type roberta  --mlm  --config_name ./EsperBERTo  --tokenizer_name ./EsperBERTo  --do_train  --learning_rate 1e-4  --num_train_epochs 10  --save_total_limit 20  --save_steps 2000  --per_gpu_train_batch_size 1  --seed $SEED --overwrite_output_dir --alpha 1.0 &
srun zip -r /n/fs/nlp-asd/asd/asd/multilingual_cloud_data.zip /n/fs/nlp-asd/asd/asd/multilingual_cloud_data &

wait;

# Finish the script
exit 0
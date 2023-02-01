#!/bin/bash -l

##############################
#       Job blueprint        #
##############################

# Different SBATCH options - https://osirim.irit.fr/site/en/articles/sbatch-options

# For salloc, use the following
# salloc --gres=gpu:1 -c 2 --mem=4G srun --pty $SHELL -l

# Give your job a name, so you can recognize it in the queue overview
#SBATCH --job-name=dropbox

# Remove one # to uncommment
#SBATCH --output=%x_%j.out

# Define, how many nodes you need. Here, we ask for 1 node.
#SBATCH -N 1 #nodes
#SBATCH -n 1 #tasks
#SBATCH --cpus-per-task=5
#SBATCH --mem=100G
#SBATCH --time=7-0:00:00    # Run for 7 days

#SBATCH --mail-type=ALL
#SBATCH --mail-user=asd@cs.princeton.edu

# Submit jobs
srun ./dropbox_uploader.sh upload /path/to/zip/file.zip /Dropbox_folder/ &

wait;

# Finish the script
exit 0

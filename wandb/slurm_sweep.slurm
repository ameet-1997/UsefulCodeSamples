#!/bin/bash -l

##############################
#       Job blueprint        #
##############################

# Give your job a name, so you can recognize it in the queue overview
#SBATCH --job-name=vanilla_sweep

# Remove one # to uncommment
#SBATCH --output=%x_%j.out

# Define, how many nodes you need. Here, we ask for 1 node.
#SBATCH -N 1 #nodes
#SBATCH -n 1 #tasks
#SBATCH --cpus-per-task=10
#SBATCH --mem=40G
#SBATCH --time=0-6:00:00    # Run for 7 days
#SBATCH --gres=gpu:1
# #SBATCH --nodelist=node905

# Submit jobs
srun wandb agent ameet-1997/continuous-classification-scripts_rcv1/vl7ps50h &

wait;

# Finish the script
exit 0
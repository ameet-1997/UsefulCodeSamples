# STEP 1: Run the configuration file
wandb sweep sweep.yaml

# STEP 2: Paste the given command in the slurm file
wandb agent ameet-1997/continuous-classification-scripts_rcv1/vl7ps50h

# STEP 3: Run the slurm file any number of times
sb slurm_sweep.slurm
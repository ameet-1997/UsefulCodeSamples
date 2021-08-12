# Create a new environment
conda create -n myenv python=3.8

# Create environment from yml file
conda env create -f environment.yml

# Store environment
conda env export > environment.yml

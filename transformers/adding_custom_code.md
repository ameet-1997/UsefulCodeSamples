### Creating your own modeling and data functions
1. Choose a script like `run_glue.py` which is closest to your use case.
2. Modify the dataset processing in the file to work with your dataset.
3. Inherit the right model class (e.g., `BERTForSequenceClassification`) and adapt it.
4. Add model and data arguments to the `config` so that you can access them in the modeling function. A trick I use is to have a common prefix for all arguments which are important and automatically add them to the config.

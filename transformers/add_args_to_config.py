# Example in https://github.com/ameet-1997/REMIND/blob/master/transformers/examples/pytorch/REMIND/utils_memory_bank.py
def add_args_to_config(config, model_args, data_args):
    """
    Add important arguments to the config
    """
    prefix = 'csts'
    for arg in vars(model_args):
        if prefix in arg:
            setattr(config, arg, getattr(model_args, arg))

    for arg in vars(data_args):
        if prefix in arg:
            setattr(config, arg, getattr(data_args, arg))

    return config

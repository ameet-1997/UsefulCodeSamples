def add_args_to_config(config, model_args, data_args):
    """
    Add important arguments to the config
    """
    for arg in vars(model_args):
        if 'csts' in arg:
            setattr(config, arg, getattr(memory_bank_args, arg))

    for arg in vars(data_args):
        if 'csts' in arg:
            setattr(config, arg, getattr(data_args, arg))

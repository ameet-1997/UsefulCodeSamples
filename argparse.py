import argparse

def main():
    parser = argparse.ArgumentParser()

    # Dataset Arguments
    parser.add_argument("--arg1", type=str, required=True, help="")
    parser.add_argument("--arg2", default=None, type=str, help="")
    parser.add_argument("--do_train", action="store_true", help="Whether to run training.")

    args = parser.parse_args()

if __name__ == '__main__':
    main()

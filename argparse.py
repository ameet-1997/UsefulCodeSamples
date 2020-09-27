import argparse

def main():
    parser = argparse.ArgumentParser()

    # Dataset Arguments
    parser.add_argument("--file1", type=str, required=True, help="")
    parser.add_argument("--file1", default=None, type=str, help="")

    args = parser.parse_args()

if __name__ == '__main__':
    main()

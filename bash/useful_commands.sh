# Command for deleting directories while excluding some, using find. Use -print instead of exec to see the list first
find . -type d -not -path "./checkpoint-*1*" -not -path "."  -exec rm -r {} \; 

# Directory sizes
du -h --max-depth=1

# Zip folders
zip -r esperanto_model_files.zip EsperBERTo-small-v1*mlm*

# Split a file into two (train=0.9 fraction and test=0.1 fraction)
csplit infile $(( $(wc -l < infile) * 9 / 10 + 1))

# Split a file
cat original.txt | awk 'BEGIN {srand()} !/^$/ { if (rand() <= .01) print $0}' > sampled.txt

# Shuffle and split
shuf infile | csplit - $(( $(wc -l < infile) * 9/10 + 1))

# Replace all occurrences of a word in a file
sed -i 's/contradictory/contradiction/g' file.txt

# View tqdm output of log files. This command will play out the progress bars
tail log.out

# Anonymize code by replacing words (case insensitive)
find . -type f -exec sed -i '' -e 's/ameet/xxx/gI' {} \;

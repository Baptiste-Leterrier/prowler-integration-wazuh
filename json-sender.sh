#!/bin/bash

# Directory where JSON files are stored
json_dir="/home/wazuh-user/output"

# Find the most recently modified JSON file in the directory
input_file=$(ls -t "$json_dir"/*.json | head -n1)

# Output JSON file name
output_file="result.json"

# Extract each element in {} from the input file and write them to the output file with a 1-second delay
jq -c '.[]' "$input_file" | while read -r line; do
    echo "$line" >> "$output_file"
    sleep 1
done

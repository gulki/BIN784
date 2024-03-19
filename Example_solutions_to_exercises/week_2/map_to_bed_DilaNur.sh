#!/bin/bash

# Input file
input_file=$1.map

# Process each line of the input file
awk '{printf "%s\t%s\t%s\t%s\t%s\n", $1, $4-1, $4, $2, $3}' "$input_file" > $1.bed

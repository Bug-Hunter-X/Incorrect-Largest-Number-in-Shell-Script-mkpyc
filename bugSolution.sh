#!/bin/bash

# Corrected script to find the largest number in a file, handling negative numbers.

input_file="numbers.txt"

# Read the first number to initialize largest_number
IFS= read -r largest_number < "$input_file"

while IFS= read -r number;
do
  if (( number > largest_number )); then
    largest_number=$number
  fi
done < "$input_file"

echo "Largest number: $largest_number"
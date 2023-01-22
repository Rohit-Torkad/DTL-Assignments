#!/bin/bash

# Initialize variables
numbers=()
sum=0

# Read numbers from user
echo "Enter a set of numbers, then press enter when finished:"
while read number; do
    numbers+=($number)
    sum=$((sum + number))
done

# Calculate average
count=${#numbers[@]}
average=$(echo "scale=2; $sum / $count" | bc)

# Print results
echo "Sum: $sum"
echo "Average: $average"


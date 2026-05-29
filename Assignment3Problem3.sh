#!/bin/bash

# Ask the user for multiplication table ranges
read -p "Enter the starting number for the multiplication table: " start_num
read -p "Enter the ending number for the multiplication table: " end_num

read -p "Enter the starting range of numbers to multiply: " start_multiplier
read -p "Enter the ending range of numbers to multiply: " end_multiplier

# Validate ranges
if [ "$start_num" -gt "$end_num" ] || [ "$start_multiplier" -gt "$end_multiplier" ]; then
    echo "Invalid range(s). Please ensure starting numbers are less than or equal to ending numbers."
    exit 1
fi

# Display multiplication table
echo
echo "Multiplication Table"
echo "---------------------"

# Outer loop for main numbers
for (( i=start_num; i<=end_num; i++ ))
do
    # Inner loop for multipliers
    for (( j=start_multiplier; j<=end_multiplier; j++ ))
    do
        result=$((i * j))
        echo -ne "$i * $j = $result\t"
    done

    echo
done
chmod +x multiplication_table.sh
./multiplication_table.sh 

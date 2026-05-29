#!/bin/bash

# BMI Categories Function
get_bmi_category() {
    bmi=$1

    if (( $(echo "$bmi < 18.5" | bc -l) )); then
        echo "Underweight"
    elif (( $(echo "$bmi >= 18.5 && $bmi <= 24.9" | bc -l) )); then
        echo "Normal weight"
    elif (( $(echo "$bmi >= 25.0 && $bmi <= 29.9" | bc -l) )); then
        echo "Overweight"
    elif (( $(echo "$bmi >= 30.0 && $bmi <= 34.9" | bc -l) )); then
        echo "Obesity I (Moderate)"
    elif (( $(echo "$bmi >= 35.0 && $bmi <= 39.9" | bc -l) )); then
        echo "Obesity II (Severe)"
    else
        echo "Obesity III (Very Severe or Morbid)"
    fi
}

# Header
echo "BMI Category Header"
echo "-------------------"

# Collect user information
read -p "Enter your name: " name
read -p "Enter your age: " age
read -p "Enter your sex (Male/Female): " sex
read -p "Enter your height (feet part): " feet
read -p "Enter your height (inches part): " inches
read -p "Enter your weight in pounds: " weight

# Calculate total height in inches
total_inches=$((feet * 12))
total_inches=$(echo "$total_inches + $inches" | bc)

# Calculate BMI
bmi=$(echo "scale=2; ($weight / ($total_inches * $total_inches)) * 703" | bc)

# Get BMI category
category=$(get_bmi_category $bmi)

# Display results
echo
echo "Hello, $name!"
echo "You are $age years old and identify as $sex."
echo "Your BMI is: $bmi ($category)"

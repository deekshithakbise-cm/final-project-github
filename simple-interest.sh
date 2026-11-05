#!/bin/bash

# Prompt the user for input values
read -p "Enter the principal amount: " principal
read -p "Enter the annual interest rate (in %): " rate
read -p "Enter the time (in years): " time

# Calculate simple interest using 'bc' for floating-point math support
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Display the calculated interest
echo "The calculated interest is: $interest"

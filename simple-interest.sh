#!/bin/bash
# simple-interest.sh
# Description: This script calculates Simple Interest based on user input.
# Simple Interest Formula: SI = (Principal * Rate * Time) / 100
#
# Input fields:
#   - Principal: The initial amount of money invested or borrowed
#   - Rate of Interest: The annual interest rate (in percentage)
#   - Time Period: The duration for which money is invested (in years)
#
# Output:
#   - Simple Interest: The calculated interest amount
#
# Usage: bash simple-interest.sh
# Author: 3bdulr7man-3lam
# License: Apache 2.0

echo "***********************************"
echo "   Simple Interest Calculator      "
echo "***********************************"

# Prompt user to enter Principal Amount
echo "Enter the Principal Amount:"
read principal

# Prompt user to enter Rate of Interest
echo "Enter the Rate of Interest (in %):"
read rate

# Prompt user to enter Time Period
echo "Enter the Time Period (in years):"
read time

# Validate that none of the inputs are empty
if [ -z "$principal" ] || [ -z "$rate" ] || [ -z "$time" ]; then
    echo "Error: All fields are required!"
    exit 1
fi

# Calculate Simple Interest using the formula: SI = (P * R * T) / 100
# 'scale=2' ensures the result is rounded to 2 decimal places
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the results to the user
echo "***********************************"
echo "   Results                         "
echo "***********************************"
echo "Principal Amount  : $principal"
echo "Rate of Interest  : $rate %"
echo "Time Period       : $time years"
echo "-----------------------------------"
echo "Simple Interest   : $simple_interest"
echo "***********************************"

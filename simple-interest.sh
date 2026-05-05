#!/bin/bash
# Simple Interest Calculator
# This script calculates simple interest based on user input.
# Simple Interest Formula: SI = (Principal * Rate * Time) / 100

echo "***********************************"
echo "   Simple Interest Calculator"
echo "***********************************"

# Input: Principal Amount
echo "Enter the Principal Amount:"
read principal

# Input: Rate of Interest
echo "Enter the Rate of Interest (in %):"
read rate

# Input: Time Period
echo "Enter the Time Period (in years):"
read time

# Validate inputs are not empty
if [ -z "$principal" ] || [ -z "$rate" ] || [ -z "$time" ]; then
    echo "Error: All fields are required!"
    exit 1
fi

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the Result
echo "***********************************"
echo "   Results"
echo "***********************************"
echo "Principal Amount  : $principal"
echo "Rate of Interest  : $rate %"
echo "Time Period       : $time years"
echo "-----------------------------------"
echo "Simple Interest   : $simple_interest"
echo "***********************************"

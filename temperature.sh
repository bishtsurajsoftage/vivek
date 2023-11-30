#!/bin/bash

# Function to convert Celsius to Fahrenheit
celsius_to_fahrenheit() {
  local celsius=$1
  local fahrenheit=$((celsius * 9/5 + 32))
  echo $fahrenheit
}

# Function to convert Fahrenheit to Celsius
fahrenheit_to_celsius() {
  local fahrenheit=$1
  local celsius=$(( (fahrenheit - 32) * 5/9 ))
  echo $celsius
}

# Prompt user for input
read -p "Enter temperature value: " temperature
read -p "Enter unit (C for Celsius, F for Fahrenheit): " unit

# Perform conversion based on user input
if [ "$unit" == "C" ] || [ "$unit" == "c" ]; then
  result=$(celsius_to_fahrenheit $temperature)
  echo "$temperature°C is $result°F"
elif [ "$unit" == "F" ] || [ "$unit" == "f" ]; then
  result=$(fahrenheit_to_celsius $temperature)
  echo "$temperature°F is $result°C"
else
  echo "Invalid unit. Please enter 'C' or 'F'."
fi

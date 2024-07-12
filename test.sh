#!/bin/bash

# Check if three parameters are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <param1> <param2> <param3>"
    exit 1
fi

# Assign parameters to variables
param1=$1
param2=$2
param3=$3

# Display the parameter values
echo "Parameter 1: $param1"
echo "Parameter 2: $param2"
echo "Parameter 3: $param3"


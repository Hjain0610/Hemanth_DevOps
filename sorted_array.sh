#!/bin/bash

read -p "Enter array 1: " arr1 arr2
read -p "Enter array 2: " arr3 arr4
array1=("$arr1" "$arr2")
array2=("$arr3" "$arr4")
combined_array=("${array1[@]}" "${array2[@]}")

sorted_array=($(printf '%s\n' "${combined_array[@]}" | sort -n))

echo "Sorted Array: ${sorted_array[@]}"

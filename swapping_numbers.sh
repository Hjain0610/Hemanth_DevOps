#!/bin/bash
echo "Before swapping: "
read -p "Enter first number: " one
read -p "Enter second number: " sec

var=$one
var1=$sec
one=$var1
sec=$var
echo "After swapping:"
echo "First number: $var1"
echo "Second number:  $var"


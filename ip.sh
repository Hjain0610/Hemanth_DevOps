#!/bin/bash

read -p "Enter an IP address: " ipa

if ip -o address show dev lo to "$ipa"; then
  echo "$ipa is a valid IP address."
else
  echo "$ipa is not a valid IP address."
fi

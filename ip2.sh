#!/bin/bash

valid_ip() {
   ip=$1

  ipv4_pattern='^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$'
  
  ipv6_pattern='^([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$'

  if echo "$ip" | grep -E -q "$ipv4_pattern"; 
  then
    return 0
  elif echo "$ip" | grep -E -q "$ipv6_pattern"; 
  then
    return 0
  else
    return 1
  fi
}

read -p "Enter an IP address: " user_input

if valid_ip "$user_input"; 
then
  echo "$user_input is a valid IP address."
else
  echo "$user_input is not a valid IP address."
fi

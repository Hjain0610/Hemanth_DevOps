#!/bin/bash

LOG_PATH="/tmp/builds"
cd "$LOG_PATH" || exit
ls -t *.log | tail -n+21 | xargs rm

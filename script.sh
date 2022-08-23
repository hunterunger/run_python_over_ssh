#!/usr/bin/env bash

dirName=$(basename "$PWD")
# transfer file remote server
scp -r "$PWD" pi@192.168.1.180:.remote_run_cache/ > /dev/null
# run "main.py" remotely
ssh pi@192.168.1.180 "cd .remote_run_cache/""$dirName""/ && python3 main.py"
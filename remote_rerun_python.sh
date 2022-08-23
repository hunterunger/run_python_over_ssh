#!/usr/bin/env bash
# re-run existing code
dirName=$(basename "$PWD")
ssh pi@192.168.1.180 "cd .remote_run_cache/""$dirName""/ && python3 main.py"
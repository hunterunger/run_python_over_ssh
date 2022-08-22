scp -r $PWD pi@192.168.1.180:.remote_pi_cache/ > /dev/null
ssh pi@192.168.1.180 "cd .remote_pi_cache/"(basename $(pwd))"/ && python3 main.py"
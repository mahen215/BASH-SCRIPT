4.WAS COPY FILE TO REMOTE HOST OR SERVER

#!/bin/bash 
FILE="/home/ubuntu/HWscript/"
USER="ubuntu"
HOST="192.168.1.10" 
path="/home/ubuntu/HWscript/backup"

scp $FILE $USER@$HOST:$path 

echo "File copied to remote server"

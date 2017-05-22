#!/bin/bash
#cd ~/Freiburg/Malmo/Minecraft/
#./launchClient.sh -port 10000 &
#./launchClient.sh -port 10001 &
ps -ef | grep 'python -m visdom.server' | grep -v grep | awk '{print $2}' | xargs kill
python -m visdom.server &  
python main.py

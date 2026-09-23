#!/bin/bash


#########################
# Author: Oluwafemi
# Date: 17/09/2026
#
# This Script outputs the node health
#
# Version: v1
# #######################


set -x # debug mode
set -e # exists the script where  there is an error
set -o # pipefail

df -h

free -g


nproc

ps -ef | grep amazon | awk -F " " '{print $2}'

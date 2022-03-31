#!/bin/bash
#test comment

NAME="Spence"
TIME="$(date +%H)"
CUTOFF="12"

echo "Writen by $NAME"
echo ""
if (( $TIME < $CUTOFF )); then
	echo "Good Morning!"
elif (( $TIME >= $CUTOFF )); then
	echo "Good Afternoon!"
fi
echo "Host: $(hostname)"
echo "User: $(whoami)"
echo "Working Directory: $(pwd)"


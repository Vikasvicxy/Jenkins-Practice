#!/bin/bash

TOTAL_USAGE=$(free -mt | grep "Total" | awk '{print $2}')
USED_MEMORY=$(free -mt | grep "Total" | awk '{print $3}')
PERCENTAGE=$(($USED_MEMORY * 100 / $TOTAL_USAGE))
THRESHOLD=70

if [ $PERCENTAGE -ge $THRESHOLD ]; then
	echo "Warning !!! Usage is crossing the limit"
else
	echo "Usage is in control"
fi


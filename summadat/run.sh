#!/bin/sh

export INTERVAL=${TEST_INTERVAL:-900}

export HOME="/data"
export CONFIG_PATH="/data/options.json"

while true
do
	TIMESTAMP=$(date "+%s")

	echo "Run the "sun grow" ..."

    /usr/local/bin/GoSungrow config write

    /usr/local/bin/GoSungrow api login

    /usr/local/bin/GoSungrow mqtt run 

	END_TIMESTAMP=$(date "+%s")
	DELTA=$(( INTERVAL - (END_TIMESTAMP - TIMESTAMP) ))
	echo "Sleep $INTERVAL before next run. $DELTA s remaining"
	sleep $DELTA

done

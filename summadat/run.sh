#!/bin/sh

export INTERVAL=${TEST_INTERVAL:-900}

export HOME="/data"
export CONFIG_PATH="/data/options.json"

echo "Run the "sun grow" ..."

/usr/bin/GoSungrow config write

/usr/bin/GoSungrow api login

/usr/bin/GoSungrow mqtt run 

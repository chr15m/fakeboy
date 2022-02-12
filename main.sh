#!/bin/bash

if [ -f "../../virtualenv/bin/python" ]
then
  py=../../virtualenv/bin/python
else
  py=python3
fi

pd -nogui -noadc -audiobuf 100 _main.pd > pd.log 2>&1 &
pdpid=$!
$py main.py
kill $pdpid

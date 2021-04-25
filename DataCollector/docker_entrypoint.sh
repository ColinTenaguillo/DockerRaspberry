#!/bin/bash

service dbus start
bluetoothd &

sleep 30

python3 /DataCollector/DataCollector.py
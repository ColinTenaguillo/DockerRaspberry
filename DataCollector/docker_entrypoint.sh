#!/bin/bash

SERVICE=dbus;
STARTED=false;

timeout=6  # timeout after 1mn + check  if dbus is running 
while ((timeout > 0))
do
  if ps ax | grep -v grep | grep $SERVICE > /dev/null
  then
      echo "$SERVICE service running, everything is fine"
      break
  else
      echo "$SERVICE is not running"
      if [ "$STARTED" = false ]
      then
        service dbus start
        bluetoothd &
        STARTED=true
        echo "$SERVICE started"
      fi
  fi
  sleep 10
  ((timeout -= 1))
done 

python3 /DataCollector/DataCollector.py
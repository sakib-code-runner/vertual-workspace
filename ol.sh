#!/bin/bash

IP="100.92.52.59"
PORT="2222"

while true
do
  echo "[+] Checking server..."

  nc -z -w 5 $IP $PORT

  if [ $? -eq 0 ]; then
    echo "[OK] Server reachable"
  else
    echo "[FAIL] Server not reachable"
  fi

  sleep 30
done

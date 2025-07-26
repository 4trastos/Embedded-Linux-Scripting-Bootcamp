#!/bin/bash

script=$1
logfile="/tmp/test_logfile.txt"
echo "Inicio del log" > "$logfile"

# Ejecutamos en background
"$script" "$logfile" > /tmp/log_output.txt &
pid=$!

sleep 1
echo "Línea nueva 1" >> "$logfile"
sleep 1
echo "Línea nueva 2" >> "$logfile"
sleep 1

kill "$pid"

if grep -q "Línea nueva 2" /tmp/log_output.txt; then
  echo "✅ PASS"
else
  echo "❌ FAIL: No se detectaron líneas nuevas en el log"
fi

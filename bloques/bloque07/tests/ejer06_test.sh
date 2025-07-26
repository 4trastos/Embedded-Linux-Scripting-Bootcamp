#!/bin/bash

script=$1
logfile="/tmp/fake_log.txt"
echo -e "INFO OK\nERROR algo\nERROR algo más\nWARN algo" > "$logfile"

output=$("$script" "$logfile")

if echo "$output" | grep -q "2"; then
  echo "✅ PASS"
else
  echo "❌ FAIL: Se esperaban 2 errores, salida fue: $output"
fi

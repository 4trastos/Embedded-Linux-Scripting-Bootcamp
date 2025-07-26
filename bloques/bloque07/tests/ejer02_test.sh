#!/bin/bash

script=$1
"$script" sh > /tmp/test_output.txt
result=$(cat /tmp/test_output.txt)

if [ "$result" = "Running" ] || [ "$result" = "Not running" ]; then
  echo "✅ PASS"
else
  echo "❌ FAIL: Se esperaba 'Running' o 'Not running', se obtuvo: $result"
fi

#!/bin/bash

script=$1
output=$("$script" | head -n 3)

if echo "$output" | grep -qiE 'mem|Memoria|Mem'; then
  echo "✅ PASS"
else
  echo "❌ FAIL: No se detectó salida relacionada con memoria"
fi

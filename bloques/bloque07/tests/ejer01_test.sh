#!/bin/bash

script=$1
output=$("$script")

if echo "$output" | grep -q "$USER"; then
  echo "✅ PASS"
else
  echo "❌ FAIL: No se encontraron procesos del usuario $USER"
fi

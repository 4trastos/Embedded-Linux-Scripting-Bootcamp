#!/bin/bash

script=$1
output=$("$script")

if echo "$output" | grep -qE 'Uso de disco: [0-9]+% - (OK|ALERTA)'; then
  echo "✅ PASS"
else
  echo "❌ FAIL: Salida inválida: $output"
fi

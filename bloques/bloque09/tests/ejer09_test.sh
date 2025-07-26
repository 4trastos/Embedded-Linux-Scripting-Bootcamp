#!/bin/sh
output=$("$1")
if echo "$output" | grep -qE '^[0-9]+(\.[0-9]{1,2})? MB$'; then
    echo "✅ PASS"
else
    echo "❌ FAIL: El formato debe ser 'X.YY MB'. Salida obtenida: '$output'"
fi

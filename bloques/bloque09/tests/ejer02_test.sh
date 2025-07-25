#!/bin/sh
output=$("$1")
if [ "$output" = "Expected output for ejer02" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Esperado 'Expected output for ejer02', obtuviste '$output'"
fi
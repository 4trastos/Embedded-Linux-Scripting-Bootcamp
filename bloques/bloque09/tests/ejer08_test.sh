#!/bin/sh
output=$("$1")
if [ "$output" = "Expected output for ejer08" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Esperado 'Expected output for ejer08', obtuviste '$output'"
fi
#!/bin/sh
output=$("$1")
if [ "$output" = "Expected output for ejer04" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Esperado 'Expected output for ejer04', obtuviste '$output'"
fi
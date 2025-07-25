#!/bin/sh
output=$("$1")
if [ "$output" = "Expected output for ejer01" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Esperado 'Expected output for ejer01', obtuviste '$output'"
fi
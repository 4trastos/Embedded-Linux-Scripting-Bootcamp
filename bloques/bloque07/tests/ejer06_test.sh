#!/bin/sh
output=$("$1")
if [ "$output" = "Expected output for ejer06" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Esperado 'Expected output for ejer06', obtuviste '$output'"
fi
#!/bin/sh
output=$("$1")
if [ "$output" = "Expected output for ejer09" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Esperado 'Expected output for ejer09', obtuviste '$output'"
fi
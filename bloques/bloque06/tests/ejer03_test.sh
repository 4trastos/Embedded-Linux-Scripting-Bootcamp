#!/bin/sh
output=$("$1")
if [ "$output" = "Expected output for ejer03" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Esperado 'Expected output for ejer03', obtuviste '$output'"
fi
#!/bin/sh
output=$("$1")
if [ "$output" = "Expected output for ejer10" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Esperado 'Expected output for ejer10', obtuviste '$output'"
fi
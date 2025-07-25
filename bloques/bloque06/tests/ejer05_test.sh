#!/bin/sh
output=$("$1")
if [ "$output" = "Expected output for ejer05" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Esperado 'Expected output for ejer05', obtuviste '$output'"
fi
#!/bin/sh
output=$("$1")
if [ "$output" = "Expected output for ejer07" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Esperado 'Expected output for ejer07', obtuviste '$output'"
fi
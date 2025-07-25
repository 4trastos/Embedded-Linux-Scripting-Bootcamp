#!/bin/sh
output=$("$1")
if [ "$output" = "Hola, Juan!" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba 'Hola, Juan!', pero obtuviste '$output'"
fi

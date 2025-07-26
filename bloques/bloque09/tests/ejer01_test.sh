#!/bin/bash
output=$("$1")
if echo "$output" | grep -qE '^[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}$'; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Formato incorrecto. Esperado: YYYY-MM-DD HH:MM:SS"
fi

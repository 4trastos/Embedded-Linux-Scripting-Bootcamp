#!/bin/sh

log_file=$(mktemp)
echo "Error de sistema" > "$log_file"
echo "error de red" >> "$log_file"
echo "todo correcto" >> "$log_file"

output=$("$1" "$log_file")
rm "$log_file"

if echo "$output" | grep -q "2 errores"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaban 2 errores detectados"
fi

#!/bin/sh
output=$("$1")
if echo "$output" | grep -q "Filesystem"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: La salida no parece mostrar el uso de disco (falta 'Filesystem')."
fi

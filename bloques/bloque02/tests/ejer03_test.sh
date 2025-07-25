#!/bin/sh
output=$("$1" | sort)
expected=$(ls -d .[^.]* | sort 2>/dev/null)
if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: La salida no coincide con la lista de archivos ocultos esperada."
fi

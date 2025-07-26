#!/bin/sh

output=$("$1")
if echo "$output" | grep -Eq "/dev/(sd|mmc)"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se encontraron dispositivos de bloque esperados (/dev/sd* o /dev/mmc*)"
fi

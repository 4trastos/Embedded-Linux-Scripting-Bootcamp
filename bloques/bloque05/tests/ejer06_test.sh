#!/bin/sh
output=$("$1")
expected=$(sed 's/\/bin\/bash/\/bin\/sh/g' /etc/passwd)
if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se ha sustituido correctamente bash por sh"
fi

#!/bin/sh
output=$("$1")
expected=$(grep '/bin/bash' /etc/passwd)
if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: El resultado no coincide con las líneas que contienen bash"
fi
